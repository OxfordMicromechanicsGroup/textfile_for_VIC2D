% Written by Phani Karamched, University of Oxford
% 23th August 2022

workingDir='C:\Users\Phani\Downloads\014_drift_correction\014_drift_correction\';    %Change this to your folder
imageNames=dir(fullfile(workingDir,'*.tif'));
fileID = fopen(strcat(workingDir, "test1.txt"),'w');
for i=1:length(imageNames)
%to extract image time
image1tags=imfinfo([workingDir imageNames(i).name]);  %Image tags are read here to determine how much to rotate back
image1tags=image1tags.UnknownTags.Value;
s=strfind(image1tags,'Time :');
timeString=image1tags(s+6:s+13);
%write to file
fprintf(fileID,"%s,%s\n",imageNames(i).name,timeString);

end

fclose(fileID);




