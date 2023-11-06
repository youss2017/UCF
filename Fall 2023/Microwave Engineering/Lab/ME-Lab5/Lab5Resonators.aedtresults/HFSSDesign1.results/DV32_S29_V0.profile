$begin 'Profile'
	$begin 'ProfileGroup'
		MajorVer=2023
		MinorVer=2
		Name='Solution Process'
		$begin 'StartInfo'
			I(1, 'Start Time', '11/06/2023 11:16:12')
			I(1, 'Host', 'DESKTOP-339EFSV')
			I(1, 'Processor', '12')
			I(1, 'OS', 'NT 10.0')
			I(1, 'Product', 'HFSS Version 2023.2.0')
		$end 'StartInfo'
		$begin 'TotalInfo'
			I(1, 'Elapsed Time', '00:00:37')
			I(1, 'ComEngine Memory', '62.9 M')
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
			ProfileItem('Machine', 0, 0, 0, 0, 0, 'I(5, 1, \'Name\', \'DESKTOP-339EFSV\', 1, \'Memory\', \'47.9 GB\', 3, \'RAM Limit\', 90, \'%f%%\', 2, \'Cores\', 4, false, 1, \'Free Disk Space\', \'370 GB\')', false, true)
		$end 'ProfileGroup'
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Allow off core\', \'True\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Solution Basis Order\', \'1\')', false, true)
		ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(1, 0, \'Elapsed time : 00:00:00 , HFSS ComEngine Memory : 60.4 M\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Perform full validations with standard port validations\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Initial Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '11/06/2023 11:16:12')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:00')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Mesh', 0, 0, 0, 0, 26004, 'I(2, 1, \'Type\', \'Phi\', 2, \'Tetrahedra\', 65, false)', true, true)
			ProfileItem('Post', 0, 0, 0, 0, 27216, 'I(2, 2, \'Tetrahedra\', 65, false, 2, \'Cores\', 1, false)', true, true)
			ProfileItem('Lambda Refine', 0, 0, 0, 0, 16772, 'I(2, 2, \'Tetrahedra\', 109, false, 2, \'Cores\', 1, false)', true, true)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Adaptive Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '11/06/2023 11:16:13')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:37')
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
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 37516, 'I(1, 1, \'Disk\', \'2.92 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 40112, 'I(2, 2, \'Tetrahedra\', 103, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 51880, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 540, false, 3, \'Matrix bandwidth\', 16.1519, \'%5.1f\', 2, \'Eigen iterations\', 84, false, 1, \'Disk\', \'42.4 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 51880, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'265 KB\')', true, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 16732, 'I(2, 2, \'Tetrahedra\', 122, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 37508, 'I(1, 1, \'Disk\', \'2.92 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 40192, 'I(2, 2, \'Tetrahedra\', 114, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 52060, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 610, false, 3, \'Matrix bandwidth\', 16.3984, \'%5.1f\', 2, \'Eigen iterations\', 92, false, 1, \'Disk\', \'5.47 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 52060, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'29.7 KB\')', true, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 16700, 'I(2, 2, \'Tetrahedra\', 138, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 37472, 'I(1, 1, \'Disk\', \'2.92 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 40196, 'I(2, 2, \'Tetrahedra\', 130, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 52444, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 696, false, 3, \'Matrix bandwidth\', 16.5805, \'%5.1f\', 2, \'Eigen iterations\', 76, false, 1, \'Disk\', \'6.72 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 52444, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'42.6 KB\')', true, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 16856, 'I(2, 2, \'Tetrahedra\', 188, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 37704, 'I(1, 1, \'Disk\', \'3.3 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 40912, 'I(2, 2, \'Tetrahedra\', 178, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 54224, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 950, false, 3, \'Matrix bandwidth\', 16.7842, \'%5.1f\', 2, \'Eigen iterations\', 95, false, 1, \'Disk\', \'19.8 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 54224, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'125 KB\')', true, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 16940, 'I(2, 2, \'Tetrahedra\', 244, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 37924, 'I(1, 1, \'Disk\', \'4.06 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 41748, 'I(2, 2, \'Tetrahedra\', 232, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 56340, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 1252, false, 3, \'Matrix bandwidth\', 17.1358, \'%5.1f\', 2, \'Eigen iterations\', 84, false, 1, \'Disk\', \'23.6 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 56340, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'141 KB\')', true, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 16924, 'I(2, 2, \'Tetrahedra\', 282, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 38076, 'I(1, 1, \'Disk\', \'3.68 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 42184, 'I(2, 2, \'Tetrahedra\', 266, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 57704, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 1462, false, 3, \'Matrix bandwidth\', 17.4918, \'%5.1f\', 2, \'Eigen iterations\', 97, false, 1, \'Disk\', \'16.4 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 57704, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'90.4 KB\')', true, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 16944, 'I(2, 2, \'Tetrahedra\', 306, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 38112, 'I(1, 1, \'Disk\', \'3.67 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 42696, 'I(2, 2, \'Tetrahedra\', 290, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 58644, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 1608, false, 3, \'Matrix bandwidth\', 17.7512, \'%5.1f\', 2, \'Eigen iterations\', 84, false, 1, \'Disk\', \'11.4 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 58644, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'65.2 KB\')', true, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 16964, 'I(2, 2, \'Tetrahedra\', 341, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 38304, 'I(1, 1, \'Disk\', \'3.67 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 43312, 'I(2, 2, \'Tetrahedra\', 322, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 60580, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 1800, false, 3, \'Matrix bandwidth\', 17.9, \'%5.1f\', 2, \'Eigen iterations\', 85, false, 1, \'Disk\', \'15 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 60580, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'86.1 KB\')', true, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 17192, 'I(2, 2, \'Tetrahedra\', 436, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 38480, 'I(1, 1, \'Disk\', \'3.67 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 44448, 'I(2, 2, \'Tetrahedra\', 411, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 63848, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 2324, false, 3, \'Matrix bandwidth\', 18.1317, \'%5.1f\', 2, \'Eigen iterations\', 90, false, 1, \'Disk\', \'40.9 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 63848, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'232 KB\')', true, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 17224, 'I(2, 2, \'Tetrahedra\', 550, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 38900, 'I(1, 1, \'Disk\', \'3.68 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 46236, 'I(2, 2, \'Tetrahedra\', 518, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 68636, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 3004, false, 3, \'Matrix bandwidth\', 18.769, \'%5.1f\', 2, \'Eigen iterations\', 80, false, 1, \'Disk\', \'53.1 KB\')', true, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 17592, 'I(2, 2, \'Tetrahedra\', 719, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 39212, 'I(1, 1, \'Disk\', \'4.06 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 48564, 'I(2, 2, \'Tetrahedra\', 674, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 76756, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 3974, false, 3, \'Matrix bandwidth\', 19.1256, \'%5.1f\', 2, \'Eigen iterations\', 81, false, 1, \'Disk\', \'75.8 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 76756, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'407 KB\')', true, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 17720, 'I(2, 2, \'Tetrahedra\', 865, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 39552, 'I(1, 1, \'Disk\', \'4.06 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 50988, 'I(2, 2, \'Tetrahedra\', 814, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 2, 0, 82924, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 4832, false, 3, \'Matrix bandwidth\', 19.399, \'%5.1f\', 2, \'Eigen iterations\', 83, false, 1, \'Disk\', \'67 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 82924, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'368 KB\')', true, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 18152, 'I(2, 2, \'Tetrahedra\', 1110, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 40536, 'I(1, 1, \'Disk\', \'3.68 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 54692, 'I(2, 2, \'Tetrahedra\', 1055, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 2, 0, 94372, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 6300, false, 3, \'Matrix bandwidth\', 19.7083, \'%5.1f\', 2, \'Eigen iterations\', 80, false, 1, \'Disk\', \'115 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 94372, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'629 KB\')', true, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 18276, 'I(2, 2, \'Tetrahedra\', 1427, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 41172, 'I(1, 1, \'Disk\', \'3.68 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 59424, 'I(2, 2, \'Tetrahedra\', 1364, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 1, 0, 3, 0, 110100, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 8250, false, 3, \'Matrix bandwidth\', 20.1318, \'%5.1f\', 2, \'Eigen iterations\', 83, false, 1, \'Disk\', \'152 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 110100, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'807 KB\')', true, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 18888, 'I(2, 2, \'Tetrahedra\', 1840, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 42128, 'I(1, 1, \'Disk\', \'4.06 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 66248, 'I(2, 2, \'Tetrahedra\', 1764, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 1, 0, 5, 0, 130480, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 10738, false, 3, \'Matrix bandwidth\', 20.3486, \'%5.1f\', 2, \'Eigen iterations\', 81, false, 1, \'Disk\', \'194 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 130480, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'1.02 MB\')', true, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 19380, 'I(2, 2, \'Tetrahedra\', 2367, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 43504, 'I(1, 1, \'Disk\', \'3.68 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 74212, 'I(2, 2, \'Tetrahedra\', 2272, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 2, 0, 7, 0, 158320, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 13910, false, 3, \'Matrix bandwidth\', 20.5243, \'%5.1f\', 2, \'Eigen iterations\', 84, false, 1, \'Disk\', \'248 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 158320, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'1.3 MB\')', true, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 20264, 'I(2, 2, \'Tetrahedra\', 3052, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 44228, 'I(1, 1, \'Disk\', \'3.3 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 85012, 'I(2, 2, \'Tetrahedra\', 2942, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 2, 0, 7, 0, 193412, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 18082, false, 3, \'Matrix bandwidth\', 20.7136, \'%5.1f\', 2, \'Eigen iterations\', 81, false, 1, \'Disk\', \'326 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 193412, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'1.71 MB\')', true, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 21376, 'I(2, 2, \'Tetrahedra\', 3935, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 46344, 'I(1, 1, \'Disk\', \'3.68 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 97880, 'I(2, 2, \'Tetrahedra\', 3802, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 3, 0, 11, 0, 239900, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 23436, false, 3, \'Matrix bandwidth\', 20.8577, \'%5.1f\', 2, \'Eigen iterations\', 80, false, 1, \'Disk\', \'418 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 239900, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'2.2 MB\')', true, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 22220, 'I(2, 2, \'Tetrahedra\', 5080, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 48476, 'I(1, 1, \'Disk\', \'3.29 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 115936, 'I(2, 2, \'Tetrahedra\', 4896, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 4, 0, 15, 0, 306992, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 30286, false, 3, \'Matrix bandwidth\', 20.9692, \'%5.1f\', 2, \'Eigen iterations\', 81, false, 1, \'Disk\', \'535 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 306992, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'2.8 MB\')', true, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 23756, 'I(2, 2, \'Tetrahedra\', 6346, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem('Simulation Setup', 0, 0, 0, 0, 51512, 'I(1, 1, \'Disk\', \'3.68 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 135416, 'I(2, 2, \'Tetrahedra\', 6134, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 6, 0, 20, 0, 380064, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 38038, false, 3, \'Matrix bandwidth\', 21.0683, \'%5.1f\', 2, \'Eigen iterations\', 83, false, 1, \'Disk\', \'606 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 380064, 'I(2, 2, \'Computed eigenmodes\', 5, false, 1, \'Disk\', \'3.17 MB\')', true, true)
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
			ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'60.4 MB\')', false, true)
			ProfileItem('Initial Meshing', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'26.6 MB\')', false, true)
			ProfileItem('Adaptive Meshing', 0, 0, 0, 0, 0, 'I(3, 1, \'Elapsed Time\', \'00:00:37\', 1, \'Total Memory\', \'2.24 GB\', 2, \'Total number of cores\', 4, false)', false, true)
			ProfileFootnote('I(3, 2, \'Max solved tets\', 6134, false, 2, \'Max matrix size\', 38038, false, 1, \'Matrix bandwidth\', \'21.1\')', 0)
		$end 'ProfileGroup'
		ProfileFootnote('I(2, 1, \'Stop Time\', \'11/06/2023 11:16:50\', 1, \'Status\', \'Normal Completion\')', 0)
	$end 'ProfileGroup'
$end 'Profile'
