$begin 'Profile'
	$begin 'ProfileGroup'
		MajorVer=2023
		MinorVer=2
		Name='Solution Process'
		$begin 'StartInfo'
			I(1, 'Start Time', '11/17/2023 08:49:13')
			I(1, 'Host', 'DESKTOP-339EFSV')
			I(1, 'Processor', '12')
			I(1, 'OS', 'NT 10.0')
			I(1, 'Product', 'HFSS Version 2023.2.0')
		$end 'StartInfo'
		$begin 'TotalInfo'
			I(1, 'Elapsed Time', '00:00:38')
			I(1, 'ComEngine Memory', '59.9 M')
		$end 'TotalInfo'
		GroupOptions=8
		TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Executing From\', \'C:\\\\Program Files\\\\AnsysEM\\\\Ansys Student\\\\v232\\\\Win64\\\\HFSSCOMENGINE.exe\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='HPC'
			$begin 'StartInfo'
				I(1, 'Type', 'Auto')
				I(1, 'MPI Vendor', 'Intel')
				I(1, 'MPI Version', '2018')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(0, ' ')
			$end 'TotalInfo'
			GroupOptions=0
			TaskDataOptions(Memory=8)
			ProfileItem('Machine', 0, 0, 0, 0, 0, 'I(5, 1, \'Name\', \'DESKTOP-339EFSV\', 1, \'Memory\', \'47.9 GB\', 3, \'RAM Limit\', 90, \'%f%%\', 2, \'Cores\', 4, false, 1, \'Free Disk Space\', \'374 GB\')', false, true)
		$end 'ProfileGroup'
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Allow off core\', \'True\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Solution Basis Order\', \'1\')', false, true)
		ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(1, 0, \'Elapsed time : 00:00:00 , HFSS ComEngine Memory : 57.4 M\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Perform full validations with standard port validations\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Initial Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '11/17/2023 08:49:13')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:00')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Lambda Refine', 0, 0, 0, 0, 16792, 'I(2, 2, \'Tetrahedra\', 109, false, 2, \'Cores\', 1, false)', true, true)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Adaptive Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '11/17/2023 08:49:13')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:38')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 1'
				$begin 'StartInfo'
					I(0, 'Eigenmode Solution')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 37444, 'I(1, 1, \'Disk\', \'2.92 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 39984, 'I(2, 2, \'Tetrahedra\', 103, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 51488, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 540, false, 3, \'Matrix bandwidth\', 16.1519, \'%5.1f\', 2, \'Eigen iterations\', 84, false, 1, \'Disk\', \'42.4 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 51488, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'265 KB\')', true, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 2'
				$begin 'StartInfo'
					I(0, 'Eigenmode Solution')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 16728, 'I(2, 2, \'Tetrahedra\', 122, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 37440, 'I(1, 1, \'Disk\', \'2.92 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 40124, 'I(2, 2, \'Tetrahedra\', 114, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 51940, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 610, false, 3, \'Matrix bandwidth\', 16.3984, \'%5.1f\', 2, \'Eigen iterations\', 92, false, 1, \'Disk\', \'5.47 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 51940, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'29.7 KB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Delta Freq. %\', 26.9997, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 3'
				$begin 'StartInfo'
					I(0, 'Eigenmode Solution')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 16776, 'I(2, 2, \'Tetrahedra\', 138, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 37516, 'I(1, 1, \'Disk\', \'2.92 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 40324, 'I(2, 2, \'Tetrahedra\', 130, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 52508, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 696, false, 3, \'Matrix bandwidth\', 16.5805, \'%5.1f\', 2, \'Eigen iterations\', 76, false, 1, \'Disk\', \'6.72 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 52508, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'42.6 KB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Delta Freq. %\', 77.9278, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 4'
				$begin 'StartInfo'
					I(0, 'Eigenmode Solution')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 16816, 'I(2, 2, \'Tetrahedra\', 188, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 37808, 'I(1, 1, \'Disk\', \'3.3 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 41044, 'I(2, 2, \'Tetrahedra\', 178, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 54296, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 950, false, 3, \'Matrix bandwidth\', 16.7842, \'%5.1f\', 2, \'Eigen iterations\', 95, false, 1, \'Disk\', \'19.8 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 54296, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'125 KB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Delta Freq. %\', 26.6441, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 5'
				$begin 'StartInfo'
					I(0, 'Eigenmode Solution')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 16924, 'I(2, 2, \'Tetrahedra\', 244, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 38000, 'I(1, 1, \'Disk\', \'4.06 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 41776, 'I(2, 2, \'Tetrahedra\', 232, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 56380, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 1252, false, 3, \'Matrix bandwidth\', 17.1358, \'%5.1f\', 2, \'Eigen iterations\', 84, false, 1, \'Disk\', \'23.6 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 56380, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'141 KB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Delta Freq. %\', 56.4362, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 6'
				$begin 'StartInfo'
					I(0, 'Eigenmode Solution')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 16948, 'I(2, 2, \'Tetrahedra\', 282, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 38032, 'I(1, 1, \'Disk\', \'3.68 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 42204, 'I(2, 2, \'Tetrahedra\', 266, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 57740, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 1462, false, 3, \'Matrix bandwidth\', 17.4918, \'%5.1f\', 2, \'Eigen iterations\', 97, false, 1, \'Disk\', \'16.4 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 57740, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'90.4 KB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Delta Freq. %\', 18.7336, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 7'
				$begin 'StartInfo'
					I(0, 'Eigenmode Solution')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 16924, 'I(2, 2, \'Tetrahedra\', 306, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 38024, 'I(1, 1, \'Disk\', \'3.67 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 42660, 'I(2, 2, \'Tetrahedra\', 290, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 58724, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 1608, false, 3, \'Matrix bandwidth\', 17.7512, \'%5.1f\', 2, \'Eigen iterations\', 84, false, 1, \'Disk\', \'11.4 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 58724, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'65.2 KB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Delta Freq. %\', 23.4514, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 8'
				$begin 'StartInfo'
					I(0, 'Eigenmode Solution')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 16980, 'I(2, 2, \'Tetrahedra\', 341, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 38292, 'I(1, 1, \'Disk\', \'3.67 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 43304, 'I(2, 2, \'Tetrahedra\', 322, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 60456, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 1800, false, 3, \'Matrix bandwidth\', 17.9, \'%5.1f\', 2, \'Eigen iterations\', 85, false, 1, \'Disk\', \'15 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 60456, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'86.1 KB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Delta Freq. %\', 4.8875, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 9'
				$begin 'StartInfo'
					I(0, 'Eigenmode Solution')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 17112, 'I(2, 2, \'Tetrahedra\', 436, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 38504, 'I(1, 1, \'Disk\', \'3.67 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 44388, 'I(2, 2, \'Tetrahedra\', 411, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 63732, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 2324, false, 3, \'Matrix bandwidth\', 18.1317, \'%5.1f\', 2, \'Eigen iterations\', 90, false, 1, \'Disk\', \'40.9 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 63732, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'232 KB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Delta Freq. %\', 7.77704, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 10'
				$begin 'StartInfo'
					I(0, 'Eigenmode Solution')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 17272, 'I(2, 2, \'Tetrahedra\', 550, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 38892, 'I(1, 1, \'Disk\', \'3.68 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 46188, 'I(2, 2, \'Tetrahedra\', 518, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 68636, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 3004, false, 3, \'Matrix bandwidth\', 18.769, \'%5.1f\', 2, \'Eigen iterations\', 80, false, 1, \'Disk\', \'53.1 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 68636, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'280 KB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Delta Freq. %\', 68.4559, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 11'
				$begin 'StartInfo'
					I(0, 'Eigenmode Solution')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 17528, 'I(2, 2, \'Tetrahedra\', 719, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 39216, 'I(1, 1, \'Disk\', \'4.06 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 48668, 'I(2, 2, \'Tetrahedra\', 674, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 76296, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 3974, false, 3, \'Matrix bandwidth\', 19.1256, \'%5.1f\', 2, \'Eigen iterations\', 81, false, 1, \'Disk\', \'75.8 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 76296, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'407 KB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Delta Freq. %\', 342.681, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 12'
				$begin 'StartInfo'
					I(0, 'Eigenmode Solution')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 17780, 'I(2, 2, \'Tetrahedra\', 865, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 39468, 'I(1, 1, \'Disk\', \'4.06 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 50864, 'I(2, 2, \'Tetrahedra\', 814, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 2, 0, 82836, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 4832, false, 3, \'Matrix bandwidth\', 19.399, \'%5.1f\', 2, \'Eigen iterations\', 83, false, 1, \'Disk\', \'67 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 82836, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'368 KB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Delta Freq. %\', 49.0751, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 13'
				$begin 'StartInfo'
					I(0, 'Eigenmode Solution')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 18056, 'I(2, 2, \'Tetrahedra\', 1110, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 39952, 'I(1, 1, \'Disk\', \'3.68 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 54676, 'I(2, 2, \'Tetrahedra\', 1055, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 2, 0, 94296, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 6300, false, 3, \'Matrix bandwidth\', 19.7083, \'%5.1f\', 2, \'Eigen iterations\', 80, false, 1, \'Disk\', \'115 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 94296, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'629 KB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Delta Freq. %\', 35.8793, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 14'
				$begin 'StartInfo'
					I(0, 'Eigenmode Solution')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 18356, 'I(2, 2, \'Tetrahedra\', 1427, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 41060, 'I(1, 1, \'Disk\', \'3.68 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 59508, 'I(2, 2, \'Tetrahedra\', 1364, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 1, 0, 3, 0, 110760, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 8250, false, 3, \'Matrix bandwidth\', 20.1318, \'%5.1f\', 2, \'Eigen iterations\', 83, false, 1, \'Disk\', \'152 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 110760, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'807 KB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Delta Freq. %\', 33.7059, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 15'
				$begin 'StartInfo'
					I(0, 'Eigenmode Solution')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 18976, 'I(2, 2, \'Tetrahedra\', 1840, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 42428, 'I(1, 1, \'Disk\', \'4.06 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 65988, 'I(2, 2, \'Tetrahedra\', 1764, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 1, 0, 5, 0, 130724, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 10738, false, 3, \'Matrix bandwidth\', 20.3486, \'%5.1f\', 2, \'Eigen iterations\', 81, false, 1, \'Disk\', \'194 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 130724, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'1.02 MB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Delta Freq. %\', 9.80265, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 16'
				$begin 'StartInfo'
					I(0, 'Eigenmode Solution')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 19436, 'I(2, 2, \'Tetrahedra\', 2367, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 43472, 'I(1, 1, \'Disk\', \'3.68 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 74152, 'I(2, 2, \'Tetrahedra\', 2272, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 2, 0, 6, 0, 158272, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 13910, false, 3, \'Matrix bandwidth\', 20.5243, \'%5.1f\', 2, \'Eigen iterations\', 84, false, 1, \'Disk\', \'248 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 158272, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'1.3 MB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Delta Freq. %\', 7.31587, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 17'
				$begin 'StartInfo'
					I(0, 'Eigenmode Solution')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 20260, 'I(2, 2, \'Tetrahedra\', 3052, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 44208, 'I(1, 1, \'Disk\', \'3.3 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 84472, 'I(2, 2, \'Tetrahedra\', 2942, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 2, 0, 6, 0, 193308, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 18082, false, 3, \'Matrix bandwidth\', 20.7136, \'%5.1f\', 2, \'Eigen iterations\', 81, false, 1, \'Disk\', \'326 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 193308, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'1.71 MB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Delta Freq. %\', 3.57767, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 18'
				$begin 'StartInfo'
					I(0, 'Eigenmode Solution')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 21352, 'I(2, 2, \'Tetrahedra\', 3935, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 46048, 'I(1, 1, \'Disk\', \'3.68 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 97996, 'I(2, 2, \'Tetrahedra\', 3802, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 3, 0, 11, 0, 239688, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 23436, false, 3, \'Matrix bandwidth\', 20.8577, \'%5.1f\', 2, \'Eigen iterations\', 80, false, 1, \'Disk\', \'418 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 239688, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'2.2 MB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Delta Freq. %\', 2.21139, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 19'
				$begin 'StartInfo'
					I(0, 'Eigenmode Solution')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 22128, 'I(2, 2, \'Tetrahedra\', 5080, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 48684, 'I(1, 1, \'Disk\', \'3.29 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 115884, 'I(2, 2, \'Tetrahedra\', 4896, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 4, 0, 15, 0, 307036, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 30286, false, 3, \'Matrix bandwidth\', 20.9692, \'%5.1f\', 2, \'Eigen iterations\', 81, false, 1, \'Disk\', \'535 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 307036, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'2.8 MB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Delta Freq. %\', 2.8444, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 20'
				$begin 'StartInfo'
					I(0, 'Eigenmode Solution')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 23660, 'I(2, 2, \'Tetrahedra\', 6346, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 51208, 'I(1, 1, \'Disk\', \'3.68 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 135556, 'I(2, 2, \'Tetrahedra\', 6134, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 6, 0, 20, 0, 380284, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 38038, false, 3, \'Matrix bandwidth\', 21.0683, \'%5.1f\', 2, \'Eigen iterations\', 83, false, 1, \'Disk\', \'606 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 380284, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'3.17 MB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Delta Freq. %\', 1.196, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileFootnote('I(1, 0, \'Adaptive Passes converged\')', 0)
		$end 'ProfileGroup'
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Simulation Summary'
			$begin 'StartInfo'
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(0, ' ')
			$end 'TotalInfo'
			GroupOptions=0
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'57.4 MB\')', false, true)
			ProfileItem('Initial Meshing', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'16.4 MB\')', false, true)
			ProfileItem('Adaptive Meshing', 0, 0, 0, 0, 0, 'I(3, 1, \'Elapsed Time\', \'00:00:38\', 1, \'Total Memory\', \'2.24 GB\', 2, \'Total number of cores\', 4, false)', false, true)
			ProfileFootnote('I(3, 2, \'Max solved tets\', 6134, false, 2, \'Max matrix size\', 38038, false, 1, \'Matrix bandwidth\', \'21.1\')', 0)
		$end 'ProfileGroup'
		ProfileFootnote('I(2, 1, \'Stop Time\', \'11/17/2023 08:49:51\', 1, \'Status\', \'Normal Completion\')', 0)
	$end 'ProfileGroup'
	$begin 'ProfileGroup'
		MajorVer=2023
		MinorVer=2
		Name='Solution Process'
		$begin 'StartInfo'
			I(1, 'Start Time', '11/17/2023 08:50:59')
			I(1, 'Host', 'DESKTOP-339EFSV')
			I(1, 'Processor', '12')
			I(1, 'OS', 'NT 10.0')
			I(1, 'Product', 'HFSS Version 2023.2.0')
		$end 'StartInfo'
		$begin 'TotalInfo'
			I(1, 'Elapsed Time', '00:01:13')
			I(1, 'ComEngine Memory', '59.4 M')
		$end 'TotalInfo'
		GroupOptions=8
		TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Executing From\', \'C:\\\\Program Files\\\\AnsysEM\\\\Ansys Student\\\\v232\\\\Win64\\\\HFSSCOMENGINE.exe\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='HPC'
			$begin 'StartInfo'
				I(1, 'Type', 'Auto')
				I(1, 'MPI Vendor', 'Intel')
				I(1, 'MPI Version', '2018')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(0, ' ')
			$end 'TotalInfo'
			GroupOptions=0
			TaskDataOptions(Memory=8)
			ProfileItem('Machine', 0, 0, 0, 0, 0, 'I(5, 1, \'Name\', \'DESKTOP-339EFSV\', 1, \'Memory\', \'47.9 GB\', 3, \'RAM Limit\', 90, \'%f%%\', 2, \'Cores\', 4, false, 1, \'Free Disk Space\', \'374 GB\')', false, true)
		$end 'ProfileGroup'
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Allow off core\', \'True\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Solution Basis Order\', \'1\')', false, true)
		ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(1, 0, \'Elapsed time : 00:00:00 , HFSS ComEngine Memory : 56.9 M\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Perform full validations with standard port validations\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Adaptive Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '11/17/2023 08:50:59')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:01:12')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 21'
				$begin 'StartInfo'
					I(0, 'Eigenmode Solution')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 25392, 'I(2, 2, \'Tetrahedra\', 7923, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 54476, 'I(1, 1, \'Disk\', \'3.3 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 160128, 'I(2, 2, \'Tetrahedra\', 7678, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 7, 0, 26, 0, 476508, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 47672, false, 3, \'Matrix bandwidth\', 21.1589, \'%5.1f\', 2, \'Eigen iterations\', 83, false, 1, \'Disk\', \'3.64 MB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 476508, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'18.6 MB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Delta Freq. %\', 1.29599, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 22'
				$begin 'StartInfo'
					I(0, 'Eigenmode Solution')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 27932, 'I(2, 2, \'Tetrahedra\', 10228, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 60592, 'I(1, 1, \'Disk\', \'3.68 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 195780, 'I(2, 2, \'Tetrahedra\', 9875, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 11, 0, 38, 0, 609976, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 61478, false, 3, \'Matrix bandwidth\', 21.213, \'%5.1f\', 2, \'Eigen iterations\', 93, false, 1, \'Disk\', \'1.05 MB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 609976, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'5.62 MB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Delta Freq. %\', 1.37961, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 23'
				$begin 'StartInfo'
					I(0, 'Eigenmode Solution')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 28708, 'I(2, 2, \'Tetrahedra\', 12018, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 63748, 'I(1, 1, \'Disk\', \'3.68 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 1, 0, 222620, 'I(2, 2, \'Tetrahedra\', 11606, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 12, 0, 43, 0, 723028, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 72318, false, 3, \'Matrix bandwidth\', 21.2468, \'%5.1f\', 2, \'Eigen iterations\', 85, false, 1, \'Disk\', \'847 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 1, 0, 723028, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'4.49 MB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Delta Freq. %\', 0.860222, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 24'
				$begin 'StartInfo'
					I(0, 'Eigenmode Solution')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 30868, 'I(2, 2, \'Tetrahedra\', 14131, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 69436, 'I(1, 1, \'Disk\', \'3.68 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 1, 0, 255220, 'I(2, 2, \'Tetrahedra\', 13631, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 15, 0, 49, 0, 881056, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 85112, false, 3, \'Matrix bandwidth\', 21.2903, \'%5.1f\', 2, \'Eigen iterations\', 84, false, 1, \'Disk\', \'1e+03 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 1, 0, 881056, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'5.26 MB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Delta Freq. %\', 0.462032, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 25'
				$begin 'StartInfo'
					I(0, 'Eigenmode Solution')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 34452, 'I(2, 2, \'Tetrahedra\', 17614, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 75700, 'I(1, 1, \'Disk\', \'7.49 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 1, 0, 308576, 'I(2, 2, \'Tetrahedra\', 16967, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 15, 0, 49, 0, 1095684, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 106094, false, 3, \'Matrix bandwidth\', 21.332, \'%5.1f\', 2, \'Eigen iterations\', 80, false, 1, \'Disk\', \'1.6 MB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 1, 0, 1095684, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'8.58 MB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Delta Freq. %\', 1.76016, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileFootnote('I(1, 0, \'Adaptive Passes converged\')', 0)
		$end 'ProfileGroup'
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Simulation Summary'
			$begin 'StartInfo'
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(0, ' ')
			$end 'TotalInfo'
			GroupOptions=0
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'56.9 MB\')', false, true)
			ProfileItem('Initial Meshing', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'0 Bytes\')', false, true)
			ProfileItem('Adaptive Meshing', 0, 0, 0, 0, 0, 'I(3, 1, \'Elapsed Time\', \'00:01:12\', 1, \'Total Memory\', \'3.61 GB\', 2, \'Total number of cores\', 4, false)', false, true)
			ProfileFootnote('I(3, 2, \'Max solved tets\', 16967, false, 2, \'Max matrix size\', 106094, false, 1, \'Matrix bandwidth\', \'21.3\')', 0)
		$end 'ProfileGroup'
		ProfileFootnote('I(2, 1, \'Stop Time\', \'11/17/2023 08:52:12\', 1, \'Status\', \'Normal Completion\')', 0)
	$end 'ProfileGroup'
	$begin 'ProfileGroup'
		MajorVer=2023
		MinorVer=2
		Name='Solution Process'
		$begin 'StartInfo'
			I(1, 'Start Time', '11/17/2023 08:54:50')
			I(1, 'Host', 'DESKTOP-339EFSV')
			I(1, 'Processor', '12')
			I(1, 'OS', 'NT 10.0')
			I(1, 'Product', 'HFSS Version 2023.2.0')
		$end 'StartInfo'
		$begin 'TotalInfo'
			I(1, 'Elapsed Time', '00:03:44')
			I(1, 'ComEngine Memory', '59.2 M')
		$end 'TotalInfo'
		GroupOptions=8
		TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Executing From\', \'C:\\\\Program Files\\\\AnsysEM\\\\Ansys Student\\\\v232\\\\Win64\\\\HFSSCOMENGINE.exe\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='HPC'
			$begin 'StartInfo'
				I(1, 'Type', 'Auto')
				I(1, 'MPI Vendor', 'Intel')
				I(1, 'MPI Version', '2018')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(0, ' ')
			$end 'TotalInfo'
			GroupOptions=0
			TaskDataOptions(Memory=8)
			ProfileItem('Machine', 0, 0, 0, 0, 0, 'I(5, 1, \'Name\', \'DESKTOP-339EFSV\', 1, \'Memory\', \'47.9 GB\', 3, \'RAM Limit\', 90, \'%f%%\', 2, \'Cores\', 4, false, 1, \'Free Disk Space\', \'374 GB\')', false, true)
		$end 'ProfileGroup'
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Allow off core\', \'True\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Solution Basis Order\', \'1\')', false, true)
		ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(1, 0, \'Elapsed time : 00:00:00 , HFSS ComEngine Memory : 56.8 M\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Perform full validations with standard port validations\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Adaptive Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '11/17/2023 08:54:51')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:03:43')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 26'
				$begin 'StartInfo'
					I(0, 'Eigenmode Solution')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 35104, 'I(2, 2, \'Tetrahedra\', 19693, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 79764, 'I(1, 1, \'Disk\', \'7.1 KB\')', true, true)
				ProfileItem('Matrix Assembly', 1, 0, 1, 0, 340868, 'I(2, 2, \'Tetrahedra\', 18959, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 18, 0, 55, 0, 1211812, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 118730, false, 3, \'Matrix bandwidth\', 21.3608, \'%5.1f\', 2, \'Eigen iterations\', 85, false, 1, \'Disk\', \'9.06 MB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 1, 0, 1211812, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'45.7 MB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Delta Freq. %\', 1.18772, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 27'
				$begin 'StartInfo'
					I(0, 'Eigenmode Solution')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 41432, 'I(2, 2, \'Tetrahedra\', 24451, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 92128, 'I(1, 1, \'Disk\', \'10.5 KB\')', true, true)
				ProfileItem('Matrix Assembly', 1, 0, 1, 0, 415644, 'I(2, 2, \'Tetrahedra\', 23575, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 28, 0, 88, 0, 1554796, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 147748, false, 3, \'Matrix bandwidth\', 21.4143, \'%5.1f\', 2, \'Eigen iterations\', 81, false, 1, \'Disk\', \'2.21 MB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 2, 0, 1554796, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'11.9 MB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Delta Freq. %\', 3.55652, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 28'
				$begin 'StartInfo'
					I(0, 'Eigenmode Solution')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 1, 0, 1, 0, 49292, 'I(2, 2, \'Tetrahedra\', 31527, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 105504, 'I(1, 1, \'Disk\', \'10.2 KB\')', true, true)
				ProfileItem('Matrix Assembly', 1, 0, 2, 0, 526500, 'I(2, 2, \'Tetrahedra\', 30503, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 41, 0, 128, 0, 2146568, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 191100, false, 3, \'Matrix bandwidth\', 21.4717, \'%5.1f\', 2, \'Eigen iterations\', 85, false, 1, \'Disk\', \'3.31 MB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 3, 0, 2146568, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'17.7 MB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Delta Freq. %\', 2.92109, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 29'
				$begin 'StartInfo'
					I(0, 'Eigenmode Solution')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 1, 0, 1, 0, 57764, 'I(2, 2, \'Tetrahedra\', 40680, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 126828, 'I(1, 1, \'Disk\', \'16.6 KB\')', true, true)
				ProfileItem('Matrix Assembly', 2, 0, 2, 0, 670024, 'I(2, 2, \'Tetrahedra\', 39469, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 42, 0, 126, 0, 3088076, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 247190, false, 3, \'Matrix bandwidth\', 21.5147, \'%5.1f\', 2, \'Eigen iterations\', 76, false, 1, \'Disk\', \'4.28 MB\')', true, true)
				ProfileItem('Field Recovery', 1, 0, 3, 0, 3088076, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'23 MB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Delta Freq. %\', 7.48268, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 30'
				$begin 'StartInfo'
					I(0, 'Eigenmode Solution')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 1, 0, 1, 0, 63116, 'I(2, 2, \'Tetrahedra\', 48128, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 143212, 'I(1, 1, \'Disk\', \'20.4 KB\')', true, true)
				ProfileItem('Matrix Assembly', 2, 0, 3, 0, 787968, 'I(2, 2, \'Tetrahedra\', 46654, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 70, 0, 193, 0, 3807524, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 292612, false, 3, \'Matrix bandwidth\', 21.5465, \'%5.1f\', 2, \'Eigen iterations\', 86, false, 1, \'Disk\', \'3.47 MB\')', true, true)
				ProfileItem('Field Recovery', 1, 0, 4, 0, 3807524, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'18.7 MB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Delta Freq. %\', 7.29476, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileFootnote('I(1, 0, \'Adaptive Passes did not converge\')', 1)
		$end 'ProfileGroup'
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Simulation Summary'
			$begin 'StartInfo'
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(0, ' ')
			$end 'TotalInfo'
			GroupOptions=0
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'56.8 MB\')', false, true)
			ProfileItem('Initial Meshing', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'0 Bytes\')', false, true)
			ProfileItem('Adaptive Meshing', 0, 0, 0, 0, 0, 'I(3, 1, \'Elapsed Time\', \'00:03:43\', 1, \'Total Memory\', \'11.3 GB\', 2, \'Total number of cores\', 4, false)', false, true)
			ProfileFootnote('I(3, 2, \'Max solved tets\', 46654, false, 2, \'Max matrix size\', 292612, false, 1, \'Matrix bandwidth\', \'21.5\')', 0)
		$end 'ProfileGroup'
		ProfileFootnote('I(2, 1, \'Stop Time\', \'11/17/2023 08:58:35\', 1, \'Status\', \'Normal Completion\')', 0)
	$end 'ProfileGroup'
$end 'Profile'
