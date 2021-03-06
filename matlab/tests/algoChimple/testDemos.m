%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   Copyright 2013 Analog Devices Inc.
%
%   Licensed under the Apache License, Version 2.0 (the "License");
%   you may not use this file except in compliance with the License.
%   You may obtain a copy of the License at
%
%       http://www.apache.org/licenses/LICENSE-2.0
%
%   Unless required by applicable law or agreed to in writing, software
%   distributed under the License is distributed on an "AS IS" BASIS,
%   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%   See the License for the specific language governing permissions and
%   limitations under the License.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function testDemos()
    global CHIMPLE_TEST_DEMOS_RUNNING
    CHIMPLE_TEST_DEMOS_RUNNING = true;
    
    current_pwd = pwd();
    setChimpleSeed(0);
    cd('../../../demo/1_basic/');
    run;
    assertTrue(mean(weights) > 0.7);
    cd(current_pwd);
    
    setChimpleSeed(0);
    cd('../../../demo/2_medical_BN/');
    run
    cd(current_pwd);
    assertTrue(all(sum(totals,2) >= 2));

    setChimpleSeed(0);
    cd('../../../demo/3_coin_flip/');
    run
    cd(current_pwd);
    assertTrue(mean(res) > 0.75);

    
    CHIMPLE_TEST_DEMOS_RUNNING = false;
end