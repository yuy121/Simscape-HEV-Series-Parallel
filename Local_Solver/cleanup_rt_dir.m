% CLEANUP RT TEST DIR
% Copyright 2011 The MathWorks, Inc.

delete('*_Solverbio.m')
delete('*_Solverpt.m')
delete('*_Solverref.m')
delete('*.dlm')
delete('*.xml')
rtw_dirs = dir('*_rtw');
for i=1:size(rtw_dirs,1)
    rmdir(rtw_dirs(i).name,'s');
    %eval(['!rmdir ' rtw_dirs(i).name '/S /Q'])
end
bdclose all
delete('*.mex*')
!rmdir slprj /S/Q
