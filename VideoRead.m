videoFile = 'room.mp4';
outputFolder = 'my_room_images';

if ~exist(outputFolder, 'dir')
    mkdir(outputFolder);
end

vidObj = VideoReader(videoFile);
frameIdx = 1;

while hasFrame(vidObj)
    frame = readFrame(vidObj);
    filename = fullfile(outputFolder, sprintf('frame_%04d.png', frameIdx));
    imwrite(frame, filename);
    frameIdx = frameIdx + 1;
end

disp('Video frame extraction completed.');
