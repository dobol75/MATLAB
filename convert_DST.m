function [out] = convert_DST(time,from_TZ,to_TZ)
%time should be a datenum vector 
out=time;

for i=length(time):-1:1
    DST_time=TimezoneConvert(time(i),from_TZ,to_TZ);
    out(i)=DST_time;
    
end
end