

## Battery Aging Tests

This resource page includes the Battery Aging Test module in Matlab-Simulink, and the datasets for 1000+ battery aging tests.

### File Description
The Simulinks file (BatteryTesting100.slx) is able to simulate the battery cycling and aging effects.
Reference: N. Omar et al., “Lithium iron phosphate based battery—Assessment of the aging parameters and development of cycle life model,” *Appl. Energy*, vol. 113, pp. 1575–1585, Jan. 2014.

Input Parameters:
1. Temp: ambient temperature.
2. DOD: depth of discharge.
3. DC: charging/discharging current. 

Note that the state of charge (SOC) can be tuned inside the setting of "Battery".

You can simiulate the battery degradation by the BatteryTesting100.slx itself for certain setups of (Temp DOD and DC).

The Matlab file (BatteryMain.m) is able to simulate several groups of battery aging tests and record the data to the excel.

Sample Data (Data_1067_Battery_Aging_Test.xlsx) inlcude 1067 (rows) groups of battery aging tests with different SOC, Temp, DOD and DC per test. 
* The 1067 is split to 889 groups of training dataset and 178 groups of validation dataset.
* All the data are normalized. In this case, 1 represests the fully capacity. Some of the capacity of the battery aging test starts from 0.98/0.97, these are due to the low ambient temperature effects.
* Each cell represets a charging/discharging cycle.	
* Degradation for each cycle is calacuted by the difference between thecapacity of the current cell and previsous cell.
* Note The degradation value in the excel is multipled by 10,000. so the actual unit for each degradation cell in the sample data. is 0.01% (1/10000) of the original capacity.

## Citation:
If you use these codes for your work, please cite the following paper:

Cunzhi Zhao and Xingpeng Li, “Microgrid Optimal Energy Scheduling Considering Neural Network based Battery Degradation”, *IEEE Transactions on Power Systems*, early access, Jan. 2023.

Paper website: <a class="off" href="/papers/CunzhiZhao-NNBD-MDS/"  target="_blank">https://rpglab.github.io/papers/CunzhiZhao-NNBD-MDS/</a>


## Contributions:
Cunzhi Zhao developed this program. Xingpeng Li supervised this work.


## Contact:
If you need any techinical support, please feel free to reach out to Cunzhi Zhao at czhao20@uh.edu.

For collaboration, please contact Dr. Xingpeng Li at xli83@central.uh.edu.

Website: https://rpglab.github.io/


## License:
This work is licensed under the terms of the <a class="off" href="https://creativecommons.org/licenses/by/4.0/"  target="_blank">Creative Commons Attribution 4.0 (CC BY 4.0) license.</a>


## Disclaimer:
The author doesn’t make any warranty for the accuracy, completeness, or usefulness of any information disclosed and the author assumes no liability or responsibility for any errors or omissions for the information (data/code/results etc) disclosed.
