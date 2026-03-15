% 1. load video
videoFile = 'road_video.mp4'; 
videoReader = VideoReader(videoFile);

% 2. "Video Player" 
videoPlayer = vision.VideoPlayer('Position', [100, 100, 800, 600]);

% 3. start loop! 
% check if there is an upcoming frame.
while hasFrame(videoReader)
    
    % --- Α. read next frame ---
    currentFrame = readFrame(videoReader);
    
    % --- Β. detect vehicles ---
    [bboxes, scores, labels] = detect(detector, currentFrame, 'Threshold', 0.75);
    
    % --- C. show vehicles ---
    if ~isempty(bboxes)
        annotations = string(labels) + ": " + string(round(scores, 2));
        currentFrame = insertObjectAnnotation(currentFrame, 'rectangle', bboxes, annotations, ...
            'Color', 'yellow', 'LineWidth', 3, 'FontSize', 14);
    end
    
    % --- D. Show frame in Player ---
    step(videoPlayer, currentFrame);
    
end

% 4. Exit player after video is done
release(videoPlayer);
disp('End of video!');