% set up arduinos
% Both pins are generally D7.
% COM 4 is the port closer to the screen

addpath(genpath('./_Classes'));
s = ArduinoServoController();
%s = ArduinoServoController([], 'COM4');

%led = ArduinoLEDController([], 'COM5'); % Pass the arduino pointer into here

% start experiment


duration = 20;%25; % minutes

params = [135, 5] % seconds on, seconds off

n_repeats = duration / (sum(params) * 1/60);
led.on()

disp('Press any key to continue...')
pause

for r = 1:n_repeats
    disp('Rotating...')
    s.rotate(0.035) % Default 0.7
    pause(params(1))
    
    disp('Halting...')
    s.stop()
    pause(params(2))

    if ~mod(r, 2)
    	led.light_switch();
    end
end

disp('Finished!')