$begin 'Profile'
	$begin 'ProfileGroup'
		MajorVer=2023
		MinorVer=2
		Name='Solution Process'
		$begin 'StartInfo'
			I(1, 'Start Time', '12/01/2023 09:45:14')
			I(1, 'Host', 'URANIUM')
			I(1, 'Processor', '16')
			I(1, 'OS', 'NT 10.0')
			I(1, 'Product', 'HFSS Version 2023.2.0')
		$end 'StartInfo'
		$begin 'TotalInfo'
			I(1, 'Elapsed Time', '00:00:35')
			I(1, 'ComEngine Memory', '72.9 M')
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
			ProfileItem('Machine', 0, 0, 0, 0, 0, 'I(5, 1, \'Name\', \'uranium\', 1, \'Memory\', \'15.4 GB\', 3, \'RAM Limit\', 90, \'%f%%\', 2, \'Cores\', 4, false, 1, \'Free Disk Space\', \'92.1 GB\')', false, true)
		$end 'ProfileGroup'
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Allow off core\', \'True\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Solution Basis Order\', \'1\')', false, true)
		ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(1, 0, \'Elapsed time : 00:00:00 , HFSS ComEngine Memory : 72.2 M\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Perform full validations with standard port validations\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Initial Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '12/01/2023 09:45:14')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:01')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Mesh', 0, 0, 0, 0, 26852, 'I(2, 1, \'Type\', \'Phi\', 2, \'Tetrahedra\', 149, false)', true, true)
			ProfileItem('Post', 0, 0, 0, 0, 28108, 'I(2, 2, \'Tetrahedra\', 149, false, 2, \'Cores\', 1, false)', true, true)
			ProfileItem('Lambda Refine', 0, 0, 0, 0, 17120, 'I(2, 2, \'Tetrahedra\', 246, false, 2, \'Cores\', 1, false)', true, true)
			ProfileItem('Simulation Setup', 0, 0, 0, 0, 38012, 'I(1, 1, \'Disk\', \'0 Bytes\')', true, true)
			ProfileItem('Port Adapt', 0, 0, 0, 0, 47680, 'I(2, 2, \'Tetrahedra\', 246, false, 1, \'Disk\', \'79.3 KB\')', true, true)
			ProfileItem('Port Refine', 0, 0, 0, 0, 17508, 'I(2, 2, \'Tetrahedra\', 543, false, 2, \'Cores\', 1, false)', true, true)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Adaptive Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '12/01/2023 09:45:15')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:24')
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
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 39736, 'I(2, 2, \'Tetrahedra\', 543, false, 1, \'Disk\', \'4.52 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 49076, 'I(4, 2, \'Tetrahedra\', 543, false, 2, \'1 Triangles\', 86, false, 2, \'2 Triangles\', 87, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 55112, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 2652, false, 3, \'Matrix bandwidth\', 15.0774, \'%5.1f\', 1, \'Disk\', \'1.62 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 55112, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'202 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 73828, 'I(1, 0, \'Adaptive Pass 1\')', true, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 17932, 'I(2, 2, \'Tetrahedra\', 709, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 40464, 'I(2, 2, \'Tetrahedra\', 709, false, 1, \'Disk\', \'4.52 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 51048, 'I(4, 2, \'Tetrahedra\', 709, false, 2, \'1 Triangles\', 86, false, 2, \'2 Triangles\', 87, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 59332, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 3618, false, 3, \'Matrix bandwidth\', 16.0819, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 59332, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'220 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 73832, 'I(1, 0, \'Adaptive Pass 2\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.24026, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 18212, 'I(2, 2, \'Tetrahedra\', 926, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 41348, 'I(2, 2, \'Tetrahedra\', 926, false, 1, \'Disk\', \'4.52 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 53288, 'I(4, 2, \'Tetrahedra\', 926, false, 2, \'1 Triangles\', 86, false, 2, \'2 Triangles\', 87, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 65532, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 4928, false, 3, \'Matrix bandwidth\', 17.2345, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 65532, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'507 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 73832, 'I(1, 0, \'Adaptive Pass 3\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.107169, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 18420, 'I(2, 2, \'Tetrahedra\', 1206, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 41644, 'I(2, 2, \'Tetrahedra\', 1206, false, 1, \'Disk\', \'4.24 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 56232, 'I(4, 2, \'Tetrahedra\', 1206, false, 2, \'1 Triangles\', 86, false, 2, \'2 Triangles\', 87, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 72820, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 6576, false, 3, \'Matrix bandwidth\', 18.0008, \'%5.1f\', 1, \'Disk\', \'4 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 72820, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'653 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 73844, 'I(1, 0, \'Adaptive Pass 4\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0715611, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 18776, 'I(2, 2, \'Tetrahedra\', 1569, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 42924, 'I(2, 2, \'Tetrahedra\', 1569, false, 1, \'Disk\', \'4.24 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 60744, 'I(4, 2, \'Tetrahedra\', 1569, false, 2, \'1 Triangles\', 86, false, 2, \'2 Triangles\', 87, false, 1, \'Disk\', \'2 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 79364, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 8792, false, 3, \'Matrix bandwidth\', 18.7118, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 79364, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'464 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 73844, 'I(1, 0, \'Adaptive Pass 5\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0780861, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 19372, 'I(2, 2, \'Tetrahedra\', 2041, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 44136, 'I(2, 2, \'Tetrahedra\', 2041, false, 1, \'Disk\', \'4.24 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 65836, 'I(4, 2, \'Tetrahedra\', 2041, false, 2, \'1 Triangles\', 86, false, 2, \'2 Triangles\', 87, false, 1, \'Disk\', \'9 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 94416, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 11660, false, 3, \'Matrix bandwidth\', 19.2821, \'%5.1f\', 1, \'Disk\', \'2 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 94416, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'597 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 73848, 'I(1, 0, \'Adaptive Pass 6\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0618227, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 19788, 'I(2, 2, \'Tetrahedra\', 2654, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 45244, 'I(2, 2, \'Tetrahedra\', 2654, false, 1, \'Disk\', \'4.24 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 72880, 'I(4, 2, \'Tetrahedra\', 2654, false, 2, \'1 Triangles\', 88, false, 2, \'2 Triangles\', 87, false, 1, \'Disk\', \'71 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 109576, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 15394, false, 3, \'Matrix bandwidth\', 19.6845, \'%5.1f\', 1, \'Disk\', \'2 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 109576, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'128 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 73912, 'I(1, 0, \'Adaptive Pass 7\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0324077, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 20668, 'I(2, 2, \'Tetrahedra\', 3452, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 46304, 'I(2, 2, \'Tetrahedra\', 3452, false, 1, \'Disk\', \'2.77 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 81204, 'I(4, 2, \'Tetrahedra\', 3452, false, 2, \'1 Triangles\', 88, false, 2, \'2 Triangles\', 87, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 128592, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 20232, false, 3, \'Matrix bandwidth\', 19.9593, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 128592, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'160 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 73912, 'I(1, 0, \'Adaptive Pass 8\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0297471, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 21944, 'I(2, 2, \'Tetrahedra\', 4492, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 48140, 'I(2, 2, \'Tetrahedra\', 4492, false, 1, \'Disk\', \'2.39 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 92004, 'I(4, 2, \'Tetrahedra\', 4492, false, 2, \'1 Triangles\', 88, false, 2, \'2 Triangles\', 87, false, 1, \'Disk\', \'1 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 160312, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 26594, false, 3, \'Matrix bandwidth\', 20.2653, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 160312, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'203 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 73916, 'I(1, 0, \'Adaptive Pass 9\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0139782, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 23348, 'I(2, 2, \'Tetrahedra\', 5840, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 51288, 'I(2, 2, \'Tetrahedra\', 5840, false, 1, \'Disk\', \'2.77 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 108472, 'I(4, 2, \'Tetrahedra\', 5840, false, 2, \'1 Triangles\', 92, false, 2, \'2 Triangles\', 87, false, 1, \'Disk\', \'153 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 198980, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 34930, false, 3, \'Matrix bandwidth\', 20.5364, \'%5.1f\', 1, \'Disk\', \'2 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 198980, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'259 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 73920, 'I(1, 0, \'Adaptive Pass 10\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.00926744, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileFootnote('I(1, 0, \'Adaptive Passes converged\')', 0)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Frequency Sweep'
			$begin 'StartInfo'
				I(1, 'Time', '12/01/2023 09:45:39')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:09')
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
					I(1, 'Time', '12/01/2023 09:45:39')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(1, 'Elapsed Time', '00:00:09')
				$end 'TotalInfo'
				GroupOptions=4
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'From 1GHz to 5GHz, 1200 Frequencies\')', false, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 5GHz'
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 61240, 'I(2, 2, \'Tetrahedra\', 5840, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 83372, 'I(4, 2, \'Tetrahedra\', 5840, false, 2, \'1 Triangles\', 92, false, 2, \'2 Triangles\', 87, false, 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 125300, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 34930, false, 3, \'Matrix bandwidth\', 20.5364, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 125300, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 1GHz'
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 60524, 'I(2, 2, \'Tetrahedra\', 5840, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 82188, 'I(4, 2, \'Tetrahedra\', 5840, false, 2, \'1 Triangles\', 92, false, 2, \'2 Triangles\', 87, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 124436, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 34930, false, 3, \'Matrix bandwidth\', 20.5364, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 124436, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 3GHz'
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 59808, 'I(2, 2, \'Tetrahedra\', 5840, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 82228, 'I(4, 2, \'Tetrahedra\', 5840, false, 2, \'1 Triangles\', 92, false, 2, \'2 Triangles\', 87, false, 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 124084, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 34930, false, 3, \'Matrix bandwidth\', 20.5364, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 124084, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 2GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 59956, 'I(2, 2, \'Tetrahedra\', 5840, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 82200, 'I(4, 2, \'Tetrahedra\', 5840, false, 2, \'1 Triangles\', 92, false, 2, \'2 Triangles\', 87, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 124352, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 34930, false, 3, \'Matrix bandwidth\', 20.5364, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 124352, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 1, Frequency: 5GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 2, Frequency: 1GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 3, Frequency: 3GHz; S Matrix Error = 439.762%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 4, Frequency: 2GHz; S Matrix Error =   4.831%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Frequency: 3.6GHz has already been solved\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 5, Frequency: 3.6GHz; S Matrix Error =   0.153%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 4.3GHz'
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 60632, 'I(2, 2, \'Tetrahedra\', 5840, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 82928, 'I(4, 2, \'Tetrahedra\', 5840, false, 2, \'1 Triangles\', 92, false, 2, \'2 Triangles\', 87, false, 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 124988, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 34930, false, 3, \'Matrix bandwidth\', 20.5364, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 124988, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 3.3GHz'
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 60384, 'I(2, 2, \'Tetrahedra\', 5840, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 82780, 'I(4, 2, \'Tetrahedra\', 5840, false, 2, \'1 Triangles\', 92, false, 2, \'2 Triangles\', 87, false, 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 124132, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 34930, false, 3, \'Matrix bandwidth\', 20.5364, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 124132, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 2.5GHz'
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 60236, 'I(2, 2, \'Tetrahedra\', 5840, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 82536, 'I(4, 2, \'Tetrahedra\', 5840, false, 2, \'1 Triangles\', 92, false, 2, \'2 Triangles\', 87, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 124380, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 34930, false, 3, \'Matrix bandwidth\', 20.5364, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 124380, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 1.5GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:01')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 60144, 'I(2, 2, \'Tetrahedra\', 5840, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 82480, 'I(4, 2, \'Tetrahedra\', 5840, false, 2, \'1 Triangles\', 92, false, 2, \'2 Triangles\', 87, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 0, 0, 0, 0, 123852, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 34930, false, 3, \'Matrix bandwidth\', 20.5364, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 123852, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 6, Frequency: 4.3GHz; S Matrix Error =   0.031%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 7, Frequency: 3.3GHz; S Matrix Error =   0.036%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 8, Frequency: 2.5GHz; S Matrix Error =   0.039%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 9, Frequency: 1.5GHz; Scattering matrix quantities converged; Passive within tolerance\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 74004, 'I(1, 0, \'Frequency Group #2; Interpolating frequency sweep\')', true, true)
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
			ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'72.2 MB\')', false, true)
			ProfileItem('Initial Meshing', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:01\', 1, \'Total Memory\', \'74 MB\')', false, true)
			ProfileItem('Adaptive Meshing', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:00:24\', 1, \'Average memory/process\', \'194 MB\', 1, \'Max memory/process\', \'194 MB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 4, false)', false, true)
			ProfileItem('Frequency Sweep', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:00:09\', 1, \'Average memory/process\', \'122 MB\', 1, \'Max memory/process\', \'122 MB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 4, false)', false, true)
			ProfileFootnote('I(3, 2, \'Max solved tets\', 5840, false, 2, \'Max matrix size\', 34930, false, 1, \'Matrix bandwidth\', \'20.5\')', 0)
		$end 'ProfileGroup'
		ProfileFootnote('I(2, 1, \'Stop Time\', \'12/01/2023 09:45:49\', 1, \'Status\', \'Normal Completion\')', 0)
	$end 'ProfileGroup'
$end 'Profile'
