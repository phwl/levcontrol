
function matmul_shiftfix_7x2_2x1(this_block)
    % Setup configuration of generic constants.
    LMAT_ROWS = 7;
    LMAT_COLS = 2;

    RMAT_ROWS = 2;
    RMAT_COLS = 1;

    OMAT_ROWS = 7;
    OMAT_COLS = 1;

    SSR_LMAT = LMAT_ROWS * LMAT_COLS;
    SSR_RMAT = RMAT_ROWS * RMAT_COLS;
    SSR_OMAT = OMAT_ROWS * OMAT_COLS;

    LMAT_RESIDUE_WIDTH = 18;
    LMAT_RESIDUE_BINPT = 14;
    LMAT_SHIFT_BITS = 5;

    RMAT_WIDTH = 25;
    RMAT_BINPT = RMAT_WIDTH - 3;

    OMAT_WIDTH = 43;
    OMAT_BINPT = OMAT_WIDTH - 6;

    % Setup block
    this_block.setTopLevelLanguage('Verilog');
    this_block.setEntityName('matmul_shiftfix');
    
    % System Generator has to assume that your entity  has a combinational feed through; 
    %   if it  doesn't, then comment out the following line:
    this_block.tagAsCombinational;
    
    % Add input ports
    this_block.addSimulinkInport('lmat_residue');
    this_block.addSimulinkInport('lmat_shift');
    this_block.addSimulinkInport('rmat');
    
    % Add output ports.
    this_block.addSimulinkOutport('res');
    %this_block.addSimulinkOutport('testpoint');
    %this_block.addSimulinkOutport('testpoint2');
    
    % Set types.
    this_block.port('res').setType(['ufix_', num2str(SSR_OMAT * OMAT_WIDTH), '_0']);

    %this_block.port('testpoint').setType(['ufix_', num2str(LMAT_RESIDUE_WIDTH + RMAT_WIDTH), '_0']);
    %this_block.port('testpoint2').setType(['ufix_', num2str(LMAT_RESIDUE_WIDTH + RMAT_WIDTH), '_0']);

    if (this_block.inputTypesKnown)
        this_block.port('lmat_residue').setType(['Ufix_', num2str(SSR_LMAT * LMAT_RESIDUE_WIDTH), '_0']);
        this_block.port('lmat_shift').setType(['Ufix_', num2str(SSR_LMAT * LMAT_SHIFT_BITS), '_0']);
        this_block.port('rmat').setType(['Ufix_', num2str(SSR_RMAT * RMAT_WIDTH), '_0']);
    end

    if (this_block.inputRatesKnown)
        setup_as_single_rate(this_block,'clk','ce')
    end

    uniqueInputRates = unique(this_block.getInputRates);

    % Set module parameters
    this_block.addGeneric('LMAT_ROWS', 'INTEGER', num2str(LMAT_ROWS));
    this_block.addGeneric('LMAT_COLS', 'INTEGER', num2str(LMAT_COLS));
    this_block.addGeneric('RMAT_ROWS', 'INTEGER', num2str(RMAT_ROWS));
    this_block.addGeneric('RMAT_COLS', 'INTEGER', num2str(RMAT_COLS));
    this_block.addGeneric('OMAT_ROWS', 'INTEGER', num2str(OMAT_ROWS));
    this_block.addGeneric('OMAT_COLS', 'INTEGER', num2str(OMAT_COLS));

    this_block.addGeneric('LMAT_RESIDUE_WIDTH', 'INTEGER', num2str(LMAT_RESIDUE_WIDTH));
    this_block.addGeneric('LMAT_RESIDUE_BINPT', 'INTEGER', num2str(LMAT_RESIDUE_BINPT));
    this_block.addGeneric('LMAT_SHIFT_BITS', 'INTEGER', num2str(LMAT_SHIFT_BITS));
    this_block.addGeneric('RMAT_WIDTH', 'INTEGER', num2str(RMAT_WIDTH));
    this_block.addGeneric('RMAT_BINPT', 'INTEGER', num2str(RMAT_BINPT));
    this_block.addGeneric('OMAT_WIDTH', 'INTEGER', num2str(OMAT_WIDTH));
    this_block.addGeneric('OMAT_BINPT', 'INTEGER', num2str(OMAT_BINPT));
    
    % Add Verilog source files.
    %this_block.addFile('matcore/barrel_shifter.v');
    %this_block.addFile('matcore/fixpt_helpers.v');
    %this_block.addFile('matcore/matmul_shiftfix.v');
    this_block.addFile('matcore/matmul_shiftfix_monoblob.v');

    return;

% ------------------------------------------------------------

function setup_as_single_rate(block,clkname,cename) 
  inputRates = block.inputRates; 
  uniqueInputRates = unique(inputRates); 
  if (length(uniqueInputRates)==1 && uniqueInputRates(1)==Inf) 
    block.addError('The inputs to this block cannot all be constant.'); 
    return; 
  end 
  if (uniqueInputRates(end) == Inf) 
     hasConstantInput = true; 
     uniqueInputRates = uniqueInputRates(1:end-1); 
  end 
  if (length(uniqueInputRates) ~= 1) 
    block.addError('The inputs to this block must run at a single rate.'); 
    return; 
  end 
  theInputRate = uniqueInputRates(1);
  for i = 1:block.numSimulinkOutports 
     block.outport(i).setRate(theInputRate); 
  end 
  block.addClkCEPair(clkname,cename,theInputRate); 
  return; 

% ------------------------------------------------------------

% This function converts the matlab array to VHDL array Style 
% and this is valid only in case of generic parameters. 
function arrayHDLType = convertArrayType(inArr) 
arrayHDLType = '';
for i=1:length(inArr)
    if (i == 1)
        arrayHDLType = [arrayHDLType '(' num2str(inArr(i))]; 
    elseif (i == length(inArr)) 
        arrayHDLType = [arrayHDLType ',' num2str(inArr(i)) ')']; 
    else 
        arrayHDLType = [arrayHDLType ',' num2str(inArr(i))]; 
    end 
end 
