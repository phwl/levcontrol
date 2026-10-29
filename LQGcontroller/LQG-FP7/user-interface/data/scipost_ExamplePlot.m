clear;
close all;
clc;

% -------------------------
% User configuration
% -------------------------
n_skip = 0;        % Samples to skip from the beginning of each dataset
n_samples = 2000;  % Samples to plot from each dataset after skipping

file_list = {
	"fpgaData_conf_conf_nofb2026-05-06-02-16-51.mat"
	"fpgaData_conf_conf_fb2026-05-06-02-17-35.mat"
	"fpgaData_conf_sad_fb2026-05-06-02-18-20.mat"
	"fpgaData_sad_sad_fb2026-05-06-02-19-55.mat"
	"fpgaData_sad_sad_nofb2026-05-06-02-20-35.mat"
};

section_names = {
	{"Confining pot.", "w/o feedback"}
	{"Confining pot.", "w/ feedback (Set 1)"}
	{"Confining pot.", "w/ feedback (Set 2)"}
	{"Saddle pot.", "w/ feedback (Set 2)"}
	{"Saddle pot.", "w/o feedback"}
};

% -------------------------
% Load first file to get channel indices
% -------------------------
first_loaded = load(file_list{1});
if isfield(first_loaded, "dataStruct")
	first_data_struct = first_loaded.dataStruct;
else
	first_data_struct = first_loaded;
end

if isfield(first_data_struct, "Labels")
	labels = first_data_struct.Labels;
else
	error("Labels field was not found in file %s.", file_list{1});
end

idx_adc1 = find(strcmp(labels, "ADC1"), 1, "first");
idx_adc2 = find(strcmp(labels, "ADC2"), 1, "first");
idx_dac1 = find(strcmp(labels, "DAC1"), 1, "first");
idx_dac2 = find(strcmp(labels, "DAC2"), 1, "first");

if isempty(idx_adc1) || isempty(idx_adc2) || isempty(idx_dac1) || isempty(idx_dac2)
	error("Required channels ADC1/ADC2/DAC1/DAC2 were not found in Labels.");
end

% -------------------------
% Build concatenated time and channel vectors
% -------------------------
t_all = [];
adc1_all = [];
adc2_all = [];
dac1_all = [];
dac2_all = [];

section_starts = zeros(numel(file_list), 1);
section_ends = zeros(numel(file_list), 1);
boundary_x = [];

time_offset = 0;

for k = 1:numel(file_list)
	loaded = load(file_list{k});
	if isfield(loaded, "dataStruct")
		curr_data_struct = loaded.dataStruct;
	else
		curr_data_struct = loaded;
	end

	if ~isfield(curr_data_struct, "t_vec") || ~isfield(curr_data_struct, "Data")
		error("Required fields t_vec/Data were not found in file %s.", file_list{k});
	end

	t_vec = curr_data_struct.t_vec;
	data_mat = curr_data_struct.Data;

	n_total = numel(t_vec);
	start_idx = n_skip + 1;

	if start_idx > n_total
		error("n_skip (%d) exceeds data length (%d) in file %s.", n_skip, n_total, file_list{k});
	end

	end_idx = min(start_idx + n_samples - 1, n_total);
	if end_idx < (start_idx + n_samples - 1)
		warning("Requested n_samples exceeds available data in %s. Using %d samples.", file_list{k}, end_idx - start_idx + 1);
	end

	idx = start_idx:end_idx;
	t_seg = t_vec(idx);

	if k == 1
		t_seg_cont = t_seg - t_seg(1);
	else
		dt = median(diff(t_seg));
		t_seg_cont = (t_seg - t_seg(1)) + time_offset + dt;
		boundary_x(end + 1, 1) = t_seg_cont(1);
	end

	adc1_seg = data_mat(idx_adc1, idx);
	adc2_seg = data_mat(idx_adc2, idx);
	dac1_seg = data_mat(idx_dac1, idx);
	dac2_seg = data_mat(idx_dac2, idx);

	t_all = [t_all, t_seg_cont]; %#ok<AGROW>
	adc1_all = [adc1_all, adc1_seg]; %#ok<AGROW>
	adc2_all = [adc2_all, adc2_seg]; %#ok<AGROW>
	dac1_all = [dac1_all, dac1_seg]; %#ok<AGROW>
	dac2_all = [dac2_all, dac2_seg]; %#ok<AGROW>

	section_starts(k) = t_seg_cont(1);
	section_ends(k) = t_seg_cont(end);
	time_offset = t_seg_cont(end);
end

section_mids = 0.5 * (section_starts + section_ends);

% Convert time axis to milliseconds
t_all          = t_all          * 1e3;
boundary_x     = boundary_x     * 1e3;
section_starts = section_starts * 1e3;
section_ends   = section_ends   * 1e3;
section_mids   = section_mids   * 1e3;

% -------------------------
% Plot configuration
% -------------------------
channel_colors = [
	0.00, 0.45, 0.74  % ADC1
	0.85, 0.33, 0.10  % ADC2
	0.93, 0.69, 0.13  % DAC1
	0.49, 0.18, 0.56  % DAC2
];

% Broken y-axis settings for ADC.
% Set to [] to auto-detect from data; set to a 2-element vector to override manually.
% e.g. adc_ylim_hi = [-0.25, 0.25]; adc_ylim_lo = [-0.72, -0.45];
adc_ylim_hi = [];         % y-limits for the main (upper) ADC band
adc_ylim_lo = [];         % y-limits for the outlier (lower) ADC band
adc_break_threshold = 0.12;  % Minimum voltage gap (V) between clusters to auto-trigger broken axis

% -------------------------
% Auto-detect broken axis break point
% -------------------------
all_adc = [adc1_all, adc2_all];
[bin_cts, bin_edges] = histcounts(all_adc, 300);

empty_mask = bin_cts == 0;
use_broken_adc = false;

if any(empty_mask)
	e_idx = find(empty_mask);
	r_starts = e_idx([true,  diff(e_idx) > 1]);
	r_ends   = e_idx([diff(e_idx) > 1, true]);
	gap_widths = bin_edges(r_ends + 1) - bin_edges(r_starts);
	[max_gap, best] = max(gap_widths);

	if max_gap >= adc_break_threshold
		use_broken_adc = true;
		break_lo_top = bin_edges(r_starts(best));
		break_hi_bot = bin_edges(r_ends(best) + 1);
	end
end

if use_broken_adc
	if isempty(adc_ylim_hi)
		main_vals = all_adc(all_adc >= break_hi_bot);
		p = 0.06 * max(1e-6, range(main_vals));
		adc_ylim_hi = [min(main_vals) - p, max(main_vals) + p];
	end
	if isempty(adc_ylim_lo)
		out_vals = all_adc(all_adc <= break_lo_top);
		p = 0.12 * max(1e-6, range(out_vals));
		adc_ylim_lo = [min(out_vals) - p, max(out_vals) + p];
	end
end

% -------------------------
% Figure layout (manual axes positions for broken-axis control)
% -------------------------
fig = figure("Color", "w", "Position", [120, 80, 1200, 750]);

left_m  = 0.13;  % left margin — wide enough for y-axis labels
right_m = 0.04;  % right margin
ax_w    = 1 - left_m - right_m;
bot_dac = 0.07;
top_m   = 0.13;  % reserved space at top for section annotations
gap_ab  = 0.06;  % gap between ADC group and DAC axes

if use_broken_adc
	dac_h     = 0.26;
	adc_lo_h  = 0.09;
	gap_break = 0;
	adc_hi_h  = 1 - bot_dac - dac_h - gap_ab - adc_lo_h - top_m;

	bot_adc_lo = bot_dac + dac_h + gap_ab;
	bot_adc_hi = bot_adc_lo + adc_lo_h + gap_break;

	ax_adc_lo = axes(fig, "Position", [left_m, bot_adc_lo, ax_w, adc_lo_h]);
	ax_adc_hi = axes(fig, "Position", [left_m, bot_adc_hi, ax_w, adc_hi_h]);
	ax_dac    = axes(fig, "Position", [left_m, bot_dac,    ax_w, dac_h]);
else
	dac_h   = 0.35;
	bot_adc = bot_dac + dac_h + gap_ab;
	adc_h   = 1 - bot_adc - top_m;

	ax_adc_hi = axes(fig, "Position", [left_m, bot_adc, ax_w, adc_h]);
	ax_dac    = axes(fig, "Position", [left_m, bot_dac, ax_w, dac_h]);
end

% -------------------------
% Section shading (alternating light grey / white)
% -------------------------
shade_color = [0.96, 0.96, 0.96];  % light grey for odd-numbered sections
if use_broken_adc
	shade_axes_list = {ax_adc_hi, ax_adc_lo, ax_dac};
else
	shade_axes_list = {ax_adc_hi, ax_dac};
end
for sa = shade_axes_list
	hold(sa{1}, "on");
end
for i = 1:numel(section_starts)
	if mod(i, 2) == 1  % odd sections get grey; even sections stay white
		for sa = shade_axes_list
			patch(sa{1}, ...
				[section_starts(i), section_ends(i), section_ends(i), section_starts(i)], ...
				[-1e6, -1e6, 1e6, 1e6], ...
				shade_color, "EdgeColor", "none", "HandleVisibility", "off");
		end
	end
end

% -------------------------
% Plot ADC channels
% -------------------------
hold(ax_adc_hi, "on");
plot(ax_adc_hi, t_all, adc1_all, "LineWidth", 0.9, "Color", channel_colors(1, :));
plot(ax_adc_hi, t_all, adc2_all, "LineWidth", 0.9, "Color", channel_colors(2, :));
ylabel(ax_adc_hi, "ADC (V)", "Interpreter", "latex");
legend(ax_adc_hi, {"ADC1 $(y_1)$", "ADC2 $(y_2)$"}, "Location", "south", "Box", "off", "Interpreter", "latex");
set(ax_adc_hi, "Box", "off", "TickDir", "out", "LineWidth", 0.8, "FontSize", 11, ...
	"XColor", "none", "TickLabelInterpreter", "latex");

if use_broken_adc
	ylim(ax_adc_hi, adc_ylim_hi);

	hold(ax_adc_lo, "on");
	plot(ax_adc_lo, t_all, adc1_all, "LineWidth", 0.9, "Color", channel_colors(1, :));
	plot(ax_adc_lo, t_all, adc2_all, "LineWidth", 0.9, "Color", channel_colors(2, :));
	ylim(ax_adc_lo, adc_ylim_lo);
	set(ax_adc_lo, "Box", "off", "TickDir", "out", "LineWidth", 0.8, "FontSize", 11, ...
		"XColor", "none", "TickLabelInterpreter", "latex");
	% Keep only a few y-ticks in the narrow outlier band
	yticks(ax_adc_lo, linspace(adc_ylim_lo(1), adc_ylim_lo(2), 3));
	ytickformat(ax_adc_lo, "%.2f");
end

% -------------------------
% Plot DAC channels
% -------------------------
hold(ax_dac, "on");
plot(ax_dac, t_all, dac1_all, "LineWidth", 0.9, "Color", channel_colors(3, :));
plot(ax_dac, t_all, dac2_all, "LineWidth", 0.9, "Color", channel_colors(4, :));
ylabel(ax_dac, "DAC (V)", "Interpreter", "latex");
xlabel(ax_dac, "Time (ms)", "Interpreter", "latex");
legend(ax_dac, {"DAC1 $(u_1)$", "DAC2 $(u_2)$"}, "Location", "northeast", "Box", "off", "Interpreter", "latex");
set(ax_dac, "Box", "off", "TickDir", "out", "LineWidth", 0.8, "FontSize", 11, "TickLabelInterpreter", "latex");
all_dac = [dac1_all, dac2_all];
dac_p   = 0.06 * max(1e-6, range(all_dac));
ylim(ax_dac, [min(all_dac) - dac_p, max(all_dac) + dac_p]);

% -------------------------
% Link x-axes
% -------------------------
if use_broken_adc
	linkaxes([ax_adc_hi, ax_adc_lo, ax_dac], "x");
else
	linkaxes([ax_adc_hi, ax_dac], "x");
end
xlim(ax_adc_hi, [t_all(1), t_all(end)]);

% -------------------------
% Section boundary lines
% -------------------------
for i = 1:numel(boundary_x)
	xline(ax_adc_hi, boundary_x(i), "k:", "LineWidth", 0.8, "HandleVisibility", "off");
	xline(ax_dac,    boundary_x(i), "k:", "LineWidth", 0.8, "HandleVisibility", "off");
	if use_broken_adc
		xline(ax_adc_lo, boundary_x(i), "k:", "LineWidth", 0.8, "HandleVisibility", "off");
	end
end

% -------------------------
% Section name annotations (above ax_adc_hi, in figure coords)
% -------------------------
ax_pos  = ax_adc_hi.Position;           % [left, bottom, width, height] in figure coords
xl      = xlim(ax_adc_hi);              % current x-axis data limits
above_h = 0.04;                         % height of the textbox strip above the axes
above_y = ax_pos(2) + ax_pos(4) + 0.005;  % just above the top edge of ax_adc_hi

for i = 1:numel(section_mids)
	% Map section_mids(i) from data coords to figure coords
	x_norm = ax_pos(1) + ax_pos(3) * (section_mids(i) - xl(1)) / diff(xl);
	% Map section width to figure coords
	w_norm = ax_pos(3) * (section_ends(i) - section_starts(i)) / diff(xl);
	annotation(fig, "textbox", [x_norm - w_norm/2, above_y, w_norm, above_h], ...
		"String", section_names{i}, ...
		"HorizontalAlignment", "center", ...
		"VerticalAlignment", "middle", ...
		"Interpreter", "latex", ...
		"FontSize", 10, ...
		"EdgeColor", "none", ...
		"FitBoxToText", "off");
end

%title(ax_adc_hi, "HIL simulator sequence: ADC channels", "Interpreter", "latex");

% -------------------------
% Broken axis diagonal marks
% -------------------------
if use_broken_adc && false
	mk_w  = 0.013;  % horizontal span of each diagonal mark (normalized fig coords)
	mk_h  = 0.014;  % vertical span of each diagonal mark (normalized fig coords)
	y_mid = bot_adc_lo + adc_lo_h + gap_break / 2;

	% Draw two parallel diagonal slashes at the left edge and right edge of the break
	for x_edge = [left_m - 0.005, left_m + ax_w - 0.005]
		for dx_off = [0, mk_w * 0.65]
			annotation(fig, "line", x_edge + dx_off + [0, mk_w], ...
				y_mid + [-mk_h/2, mk_h/2], ...
				"Color", "k", "LineWidth", 1.2);
		end
	end
end

% -------------------------
% Export figure
% -------------------------
fig.Units = "centimeters";
fig.Position(3:4) = [17.8, 10];  % full page width for a two-column journal (cm)
exportgraphics(fig, "scipost_ExamplePlot.png", "Resolution", 600);
