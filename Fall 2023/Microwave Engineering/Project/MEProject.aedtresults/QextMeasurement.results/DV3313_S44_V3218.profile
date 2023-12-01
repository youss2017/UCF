$begin 'Profile'
	$begin 'ProfileGroup'
		MajorVer=2023
		MinorVer=2
		Name='Solution Process'
		$begin 'StartInfo'
			I(1, 'Start Time', '11/21/2023 15:56:38')
			I(1, 'Host', 'URANIUM')
			I(1, 'Processor', '16')
			I(1, 'OS', 'NT 10.0')
			I(1, 'Product', 'HFSS Version 2023.2.0')
		$end 'StartInfo'
		$begin 'TotalInfo'
			I(1, 'Elapsed Time', '00:00:40')
			I(1, 'ComEngine Memory', '69 M')
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
			ProfileItem('Machine', 0, 0, 0, 0, 0, 'I(5, 1, \'Name\', \'uranium\', 1, \'Memory\', \'15.4 GB\', 3, \'RAM Limit\', 90, \'%f%%\', 2, \'Cores\', 4, false, 1, \'Free Disk Space\', \'107 GB\')', false, true)
		$end 'ProfileGroup'
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Allow off core\', \'True\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Solution Basis Order\', \'1\')', false, true)
		ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(1, 0, \'Elapsed time : 00:00:00 , HFSS ComEngine Memory : 62.9 M\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Perform full validations with standard port validations\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Initial Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '11/21/2023 15:56:39')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:02')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Mesh', 0, 0, 0, 0, 27368, 'I(2, 1, \'Type\', \'Phi\', 2, \'Tetrahedra\', 239, false)', true, true)
			ProfileItem('Post', 0, 0, 0, 0, 29408, 'I(2, 2, \'Tetrahedra\', 260, false, 2, \'Cores\', 1, false)', true, true)
			ProfileItem('Lambda Refine', 0, 0, 0, 0, 16988, 'I(2, 2, \'Tetrahedra\', 315, false, 2, \'Cores\', 1, false)', true, true)
			ProfileItem('Simulation Setup', 0, 0, 0, 0, 37868, 'I(1, 1, \'Disk\', \'0 Bytes\')', true, true)
			ProfileItem('Port Adapt', 0, 0, 0, 0, 47364, 'I(2, 2, \'Tetrahedra\', 233, false, 1, \'Disk\', \'82.8 KB\')', true, true)
			ProfileItem('Port Refine', 0, 0, 0, 0, 17772, 'I(2, 2, \'Tetrahedra\', 639, false, 2, \'Cores\', 1, false)', true, true)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Adaptive Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '11/21/2023 15:56:41')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:27')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 1'
				$begin 'StartInfo'
					I(1, 'Frequency', '3.6GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 40124, 'I(2, 2, \'Tetrahedra\', 503, false, 1, \'Disk\', \'3.95 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 47928, 'I(4, 2, \'Tetrahedra\', 503, false, 2, \'1 Triangles\', 113, false, 2, \'2 Triangles\', 89, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 51820, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 2312, false, 3, \'Matrix bandwidth\', 14.132, \'%5.1f\', 1, \'Disk\', \'1.62 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 51824, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'175 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 66960, 'I(1, 0, \'Adaptive Pass 1\')', true, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 2'
				$begin 'StartInfo'
					I(1, 'Frequency', '3.6GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 18224, 'I(2, 2, \'Tetrahedra\', 793, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 40520, 'I(2, 2, \'Tetrahedra\', 625, false, 1, \'Disk\', \'4.72 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 48824, 'I(4, 2, \'Tetrahedra\', 625, false, 2, \'1 Triangles\', 113, false, 2, \'2 Triangles\', 89, false, 1, \'Disk\', \'14 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 52084, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 2978, false, 3, \'Matrix bandwidth\', 15.0981, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 52084, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'25.2 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 67096, 'I(1, 0, \'Adaptive Pass 2\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.134125, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 3'
				$begin 'StartInfo'
					I(1, 'Frequency', '3.6GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 18200, 'I(2, 2, \'Tetrahedra\', 924, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 40848, 'I(2, 2, \'Tetrahedra\', 725, false, 1, \'Disk\', \'5.1 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 49436, 'I(4, 2, \'Tetrahedra\', 725, false, 2, \'1 Triangles\', 113, false, 2, \'2 Triangles\', 89, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 54708, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 3526, false, 3, \'Matrix bandwidth\', 15.5409, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 54708, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'24.3 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 67132, 'I(1, 0, \'Adaptive Pass 3\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.198568, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 4'
				$begin 'StartInfo'
					I(1, 'Frequency', '3.6GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 18584, 'I(2, 2, \'Tetrahedra\', 1132, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 41460, 'I(2, 2, \'Tetrahedra\', 877, false, 1, \'Disk\', \'5.1 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 50996, 'I(4, 2, \'Tetrahedra\', 877, false, 2, \'1 Triangles\', 113, false, 2, \'2 Triangles\', 89, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 56468, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 4366, false, 3, \'Matrix bandwidth\', 16.1654, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 56468, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'32.2 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 67232, 'I(1, 0, \'Adaptive Pass 4\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.26629, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 5'
				$begin 'StartInfo'
					I(1, 'Frequency', '3.6GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 18924, 'I(2, 2, \'Tetrahedra\', 1398, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 42128, 'I(2, 2, \'Tetrahedra\', 1091, false, 1, \'Disk\', \'5.1 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 51908, 'I(4, 2, \'Tetrahedra\', 1091, false, 2, \'1 Triangles\', 113, false, 2, \'2 Triangles\', 89, false, 1, \'Disk\', \'19 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 58396, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 5570, false, 3, \'Matrix bandwidth\', 16.8154, \'%5.1f\', 1, \'Disk\', \'4 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 58396, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'306 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 67256, 'I(1, 0, \'Adaptive Pass 5\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0689534, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 6'
				$begin 'StartInfo'
					I(1, 'Frequency', '3.6GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 19260, 'I(2, 2, \'Tetrahedra\', 1727, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 42660, 'I(2, 2, \'Tetrahedra\', 1365, false, 1, \'Disk\', \'5.1 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 54176, 'I(4, 2, \'Tetrahedra\', 1365, false, 2, \'1 Triangles\', 113, false, 2, \'2 Triangles\', 89, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 62784, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 7152, false, 3, \'Matrix bandwidth\', 17.4429, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 62784, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'383 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 67360, 'I(1, 0, \'Adaptive Pass 6\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0257235, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 7'
				$begin 'StartInfo'
					I(1, 'Frequency', '3.6GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 19616, 'I(2, 2, \'Tetrahedra\', 2137, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 43860, 'I(2, 2, \'Tetrahedra\', 1709, false, 1, \'Disk\', \'4.72 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 56444, 'I(4, 2, \'Tetrahedra\', 1709, false, 2, \'1 Triangles\', 113, false, 2, \'2 Triangles\', 89, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 69304, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 9164, false, 3, \'Matrix bandwidth\', 17.9789, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 69304, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'65.7 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 67364, 'I(1, 0, \'Adaptive Pass 7\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0510257, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 8'
				$begin 'StartInfo'
					I(1, 'Frequency', '3.6GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 20172, 'I(2, 2, \'Tetrahedra\', 2557, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 43868, 'I(2, 2, \'Tetrahedra\', 2062, false, 1, \'Disk\', \'4.72 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 59196, 'I(4, 2, \'Tetrahedra\', 2062, false, 2, \'1 Triangles\', 113, false, 2, \'2 Triangles\', 89, false, 1, \'Disk\', \'10 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 71332, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 11256, false, 3, \'Matrix bandwidth\', 18.3594, \'%5.1f\', 1, \'Disk\', \'2 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 71332, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'72.1 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 67372, 'I(1, 0, \'Adaptive Pass 8\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0505367, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 9'
				$begin 'StartInfo'
					I(1, 'Frequency', '3.6GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 20820, 'I(2, 2, \'Tetrahedra\', 3188, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 45252, 'I(2, 2, \'Tetrahedra\', 2578, false, 1, \'Disk\', \'4.72 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 62448, 'I(4, 2, \'Tetrahedra\', 2578, false, 2, \'1 Triangles\', 113, false, 2, \'2 Triangles\', 89, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 79328, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 14264, false, 3, \'Matrix bandwidth\', 18.6637, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 79328, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'97.7 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 67388, 'I(1, 0, \'Adaptive Pass 9\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0127026, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 10'
				$begin 'StartInfo'
					I(1, 'Frequency', '3.6GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 21828, 'I(2, 2, \'Tetrahedra\', 3965, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 46816, 'I(2, 2, \'Tetrahedra\', 3240, false, 1, \'Disk\', \'3.96 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 66864, 'I(4, 2, \'Tetrahedra\', 3240, false, 2, \'1 Triangles\', 113, false, 2, \'2 Triangles\', 89, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 88532, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 18216, false, 3, \'Matrix bandwidth\', 19.0311, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 88532, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'124 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 67432, 'I(1, 0, \'Adaptive Pass 10\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0334958, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileFootnote('I(1, 0, \'Adaptive Passes did not converge\')', 1)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Frequency Sweep'
			$begin 'StartInfo'
				I(1, 'Time', '11/21/2023 15:57:08')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:10')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'HPC\', \'Enabled\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Solution - Sweep'
				$begin 'StartInfo'
					I(0, 'Interpolating HFSS Frequency Sweep, Solving Distributed - up to 4 frequencies in parallel')
					I(1, 'Time', '11/21/2023 15:57:08')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(1, 'Elapsed Time', '00:00:10')
				$end 'TotalInfo'
				GroupOptions=4
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'From 1.8GHz to 5.4GHz, 401 Frequencies\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Frequency: 3.6GHz has already been solved\')', false, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 5.4GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 56516, 'I(2, 2, \'Tetrahedra\', 3240, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 67340, 'I(4, 2, \'Tetrahedra\', 3240, false, 2, \'1 Triangles\', 113, false, 2, \'2 Triangles\', 89, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 95144, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 18216, false, 3, \'Matrix bandwidth\', 19.0311, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional propagating and/or slowly decaying mode whose attenuation is   0.000e+00 and propagation constant is   2.528e+01\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   0.000e+00 and propagation constant is   2.532e+01\')', false, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 95144, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 1.8GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 55528, 'I(2, 2, \'Tetrahedra\', 3240, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 66312, 'I(4, 2, \'Tetrahedra\', 3240, false, 2, \'1 Triangles\', 113, false, 2, \'2 Triangles\', 89, false, 1, \'Disk\', \'33 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 93704, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 18216, false, 3, \'Matrix bandwidth\', 19.0311, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 93704, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 2.7GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 55676, 'I(2, 2, \'Tetrahedra\', 3240, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 66400, 'I(4, 2, \'Tetrahedra\', 3240, false, 2, \'1 Triangles\', 113, false, 2, \'2 Triangles\', 89, false, 1, \'Disk\', \'17 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 94064, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 18216, false, 3, \'Matrix bandwidth\', 19.0311, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 94064, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 4.5GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 55268, 'I(2, 2, \'Tetrahedra\', 3240, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 66224, 'I(4, 2, \'Tetrahedra\', 3240, false, 2, \'1 Triangles\', 113, false, 2, \'2 Triangles\', 89, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 93972, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 18216, false, 3, \'Matrix bandwidth\', 19.0311, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 93972, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 1, Frequency: 5.4GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 2, Frequency: 1.8GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 3, Frequency: 3.6GHz; S Matrix Error = 211.178%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 4, Frequency: 2.7GHz; S Matrix Error = 124.514%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 5, Frequency: 4.5GHz; S Matrix Error =  49.398%\')', false, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 4.95GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 55696, 'I(2, 2, \'Tetrahedra\', 3240, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 66424, 'I(4, 2, \'Tetrahedra\', 3240, false, 2, \'1 Triangles\', 113, false, 2, \'2 Triangles\', 89, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 94376, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 18216, false, 3, \'Matrix bandwidth\', 19.0311, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 94376, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 4.05GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 55596, 'I(2, 2, \'Tetrahedra\', 3240, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 66152, 'I(4, 2, \'Tetrahedra\', 3240, false, 2, \'1 Triangles\', 113, false, 2, \'2 Triangles\', 89, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 94000, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 18216, false, 3, \'Matrix bandwidth\', 19.0311, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 94000, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 3.15GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 55432, 'I(2, 2, \'Tetrahedra\', 3240, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 66200, 'I(4, 2, \'Tetrahedra\', 3240, false, 2, \'1 Triangles\', 113, false, 2, \'2 Triangles\', 89, false, 1, \'Disk\', \'17 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 93688, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 18216, false, 3, \'Matrix bandwidth\', 19.0311, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 93688, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 2.25GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 55020, 'I(2, 2, \'Tetrahedra\', 3240, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 65740, 'I(4, 2, \'Tetrahedra\', 3240, false, 2, \'1 Triangles\', 113, false, 2, \'2 Triangles\', 89, false, 1, \'Disk\', \'23 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 93388, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 18216, false, 3, \'Matrix bandwidth\', 19.0311, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 93388, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 6, Frequency: 4.95GHz; S Matrix Error =  10.339%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 7, Frequency: 4.05GHz; S Matrix Error =   0.655%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 8, Frequency: 3.15GHz; S Matrix Error =   0.027%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 9, Frequency: 2.25GHz; Scattering matrix quantities converged; Passive within tolerance\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 70108, 'I(1, 0, \'Frequency Group #2; Interpolating frequency sweep\')', true, true)
				ProfileFootnote('I(1, 0, \'Interpolating sweep converged and is passive\')', 0)
				ProfileFootnote('I(1, 0, \'HFSS: Distributed Interpolating sweep\')', 0)
			$end 'ProfileGroup'
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
			ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'62.9 MB\')', false, true)
			ProfileItem('Initial Meshing', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:02\', 1, \'Total Memory\', \'75 MB\')', false, true)
			ProfileItem('Adaptive Meshing', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:00:27\', 1, \'Average memory/process\', \'86.5 MB\', 1, \'Max memory/process\', \'86.5 MB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 4, false)', false, true)
			ProfileItem('Frequency Sweep', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:00:10\', 1, \'Average memory/process\', \'91.8 MB\', 1, \'Max memory/process\', \'92.9 MB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 4, false)', false, true)
			ProfileFootnote('I(3, 2, \'Max solved tets\', 3240, false, 2, \'Max matrix size\', 18216, false, 1, \'Matrix bandwidth\', \'19.0\')', 0)
		$end 'ProfileGroup'
		ProfileFootnote('I(2, 1, \'Stop Time\', \'11/21/2023 15:57:19\', 1, \'Status\', \'Normal Completion\')', 0)
	$end 'ProfileGroup'
$end 'Profile'
