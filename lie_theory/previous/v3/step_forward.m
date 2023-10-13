function manifold = step_forward(screws,d_state)
% step_forward 
% Summary of this function goes here
% Detailed explanation goes here
pose_joints = eye(4);
for num = 1:1:size(screws,1)
    pose_joints = pose_joints*vector_to_manifold(screws(num,:)',d_state(num)); 
end
manifold = pose_joints;