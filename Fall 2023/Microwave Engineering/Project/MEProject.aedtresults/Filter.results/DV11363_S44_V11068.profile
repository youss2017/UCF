$begin 'Profile'
	$begin 'ProfileGroup'
		MajorVer=2023
		MinorVer=2
		Name='Solution Process'
		$begin 'StartInfo'
			I(1, 'Start Time', '12/01/2023 09:33:06')
			I(1, 'Host', 'URANIUM')
			I(1, 'Processor', '16')
			I(1, 'OS', 'NT 10.0')
			I(1, 'Product', 'HFSS Version 2023.2.0')
		$end 'StartInfo'
		$begin 'TotalInfo'
			I(1, 'Elapsed Time', '00:03:03')
			I(1, 'ComEngine Memory', '72.5 M')
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
			ProfileItem('Machine', 0, 0, 0, 0, 0, 'I(5, 1, \'Name\', \'uranium\', 1, \'Memory\', \'15.4 GB\', 3, \'RAM Limit\', 90, \'%f%%\', 2, \'Cores\', 4, false, 1, \'Free Disk Space\', \'92.3 GB\')', false, true)
		$end 'ProfileGroup'
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Allow off core\', \'True\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Solution Basis Order\', \'1\')', false, true)
		ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(1, 0, \'Elapsed time : 00:00:00 , HFSS ComEngine Memory : 66.9 M\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Perform full validations with standard port validations\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Initial Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '12/01/2023 09:33:06')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:01')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Mesh', 0, 0, 0, 0, 28452, 'I(2, 1, \'Type\', \'Phi\', 2, \'Tetrahedra\', 363, false)', true, true)
			ProfileItem('Post', 0, 0, 0, 0, 30812, 'I(2, 2, \'Tetrahedra\', 487, false, 2, \'Cores\', 1, false)', true, true)
			ProfileItem('Lambda Refine', 0, 0, 0, 0, 18480, 'I(2, 2, \'Tetrahedra\', 798, false, 2, \'Cores\', 1, false)', true, true)
			ProfileItem('Simulation Setup', 0, 0, 0, 0, 40340, 'I(1, 1, \'Disk\', \'0 Bytes\')', true, true)
			ProfileItem('Port Adapt', 0, 0, 0, 0, 53316, 'I(2, 2, \'Tetrahedra\', 798, false, 1, \'Disk\', \'81.5 KB\')', true, true)
			ProfileItem('Port Refine', 0, 0, 0, 0, 18416, 'I(2, 2, \'Tetrahedra\', 1110, false, 2, \'Cores\', 1, false)', true, true)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Adaptive Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '12/01/2023 09:33:08')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:01:16')
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
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 42704, 'I(2, 2, \'Tetrahedra\', 1110, false, 1, \'Disk\', \'3.36 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 58660, 'I(4, 2, \'Tetrahedra\', 1110, false, 2, \'1 Triangles\', 97, false, 2, \'2 Triangles\', 88, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 71984, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 6248, false, 3, \'Matrix bandwidth\', 18.9159, \'%5.1f\', 1, \'Disk\', \'1.63 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 71984, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'689 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 70628, 'I(1, 0, \'Adaptive Pass 1\')', true, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 19148, 'I(2, 2, \'Tetrahedra\', 1447, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 43352, 'I(2, 2, \'Tetrahedra\', 1447, false, 1, \'Disk\', \'3.36 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 61636, 'I(4, 2, \'Tetrahedra\', 1447, false, 2, \'1 Triangles\', 97, false, 2, \'2 Triangles\', 88, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 82196, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 8402, false, 3, \'Matrix bandwidth\', 19.6895, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 82196, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'88.3 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 70788, 'I(1, 0, \'Adaptive Pass 2\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 1.54446, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 19580, 'I(2, 2, \'Tetrahedra\', 1884, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 44228, 'I(2, 2, \'Tetrahedra\', 1884, false, 1, \'Disk\', \'3.36 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 67476, 'I(4, 2, \'Tetrahedra\', 1884, false, 2, \'1 Triangles\', 97, false, 2, \'2 Triangles\', 88, false, 1, \'Disk\', \'3 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 97536, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 11184, false, 3, \'Matrix bandwidth\', 20.2466, \'%5.1f\', 1, \'Disk\', \'2 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 97536, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'111 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 70808, 'I(1, 0, \'Adaptive Pass 3\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 1.35702, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 20032, 'I(2, 2, \'Tetrahedra\', 2257, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 44312, 'I(2, 2, \'Tetrahedra\', 2257, false, 1, \'Disk\', \'3.36 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 71548, 'I(4, 2, \'Tetrahedra\', 2257, false, 2, \'1 Triangles\', 97, false, 2, \'2 Triangles\', 88, false, 1, \'Disk\', \'1 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 113120, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 13534, false, 3, \'Matrix bandwidth\', 20.589, \'%5.1f\', 1, \'Disk\', \'2 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 113120, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'656 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 70916, 'I(1, 0, \'Adaptive Pass 4\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.484713, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 20724, 'I(2, 2, \'Tetrahedra\', 2901, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 46076, 'I(2, 2, \'Tetrahedra\', 2901, false, 1, \'Disk\', \'3.36 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 79216, 'I(4, 2, \'Tetrahedra\', 2901, false, 2, \'1 Triangles\', 97, false, 2, \'2 Triangles\', 88, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 132044, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 17618, false, 3, \'Matrix bandwidth\', 20.9294, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 132044, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'853 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 70928, 'I(1, 0, \'Adaptive Pass 5\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.505548, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 21624, 'I(2, 2, \'Tetrahedra\', 3773, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 46608, 'I(2, 2, \'Tetrahedra\', 3773, false, 1, \'Disk\', \'3.36 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 88576, 'I(4, 2, \'Tetrahedra\', 3773, false, 2, \'1 Triangles\', 97, false, 2, \'2 Triangles\', 88, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 160932, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 23152, false, 3, \'Matrix bandwidth\', 21.2154, \'%5.1f\', 1, \'Disk\', \'2 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 160932, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'188 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 70932, 'I(1, 0, \'Adaptive Pass 6\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.101341, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 22380, 'I(2, 2, \'Tetrahedra\', 4907, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 49500, 'I(2, 2, \'Tetrahedra\', 4907, false, 1, \'Disk\', \'3.36 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 102468, 'I(4, 2, \'Tetrahedra\', 4907, false, 2, \'1 Triangles\', 97, false, 2, \'2 Triangles\', 88, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 208156, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 30340, false, 3, \'Matrix bandwidth\', 21.4312, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 208156, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'235 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 70932, 'I(1, 0, \'Adaptive Pass 7\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0287652, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 24000, 'I(2, 2, \'Tetrahedra\', 6383, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 52292, 'I(2, 2, \'Tetrahedra\', 6383, false, 1, \'Disk\', \'3.36 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 119068, 'I(4, 2, \'Tetrahedra\', 6383, false, 2, \'1 Triangles\', 97, false, 2, \'2 Triangles\', 88, false, 1, \'Disk\', \'1 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 2, 0, 258476, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 39712, false, 3, \'Matrix bandwidth\', 21.6079, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 258476, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'296 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 70944, 'I(1, 0, \'Adaptive Pass 8\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0946784, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 25988, 'I(2, 2, \'Tetrahedra\', 8300, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 55408, 'I(2, 2, \'Tetrahedra\', 8300, false, 1, \'Disk\', \'3.36 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 141064, 'I(4, 2, \'Tetrahedra\', 8300, false, 2, \'1 Triangles\', 99, false, 2, \'2 Triangles\', 88, false, 1, \'Disk\', \'76 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 1, 0, 2, 0, 322960, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 51858, false, 3, \'Matrix bandwidth\', 21.732, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 322960, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'377 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 70952, 'I(1, 0, \'Adaptive Pass 9\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0707502, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 28448, 'I(2, 2, \'Tetrahedra\', 10794, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 61412, 'I(2, 2, \'Tetrahedra\', 10794, false, 1, \'Disk\', \'3.36 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 1, 0, 170428, 'I(4, 2, \'Tetrahedra\', 10794, false, 2, \'1 Triangles\', 101, false, 2, \'2 Triangles\', 88, false, 1, \'Disk\', \'84 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 1, 0, 3, 0, 425928, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 67700, false, 3, \'Matrix bandwidth\', 21.8459, \'%5.1f\', 1, \'Disk\', \'5 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 425928, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'482 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 71044, 'I(1, 0, \'Adaptive Pass 10\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0257357, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 11'
				$begin 'StartInfo'
					I(1, 'Frequency', '3.6GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 31852, 'I(2, 2, \'Tetrahedra\', 14035, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 68412, 'I(2, 2, \'Tetrahedra\', 14035, false, 1, \'Disk\', \'3.36 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 1, 0, 208260, 'I(4, 2, \'Tetrahedra\', 14035, false, 2, \'1 Triangles\', 103, false, 2, \'2 Triangles\', 92, false, 1, \'Disk\', \'229 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 1, 0, 5, 0, 542584, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 88240, false, 3, \'Matrix bandwidth\', 21.9255, \'%5.1f\', 1, \'Disk\', \'2 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 542584, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'622 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 71072, 'I(1, 0, \'Adaptive Pass 11\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0381789, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 12'
				$begin 'StartInfo'
					I(1, 'Frequency', '3.6GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 35148, 'I(2, 2, \'Tetrahedra\', 18246, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 76620, 'I(2, 2, \'Tetrahedra\', 18246, false, 1, \'Disk\', \'6.85 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 1, 0, 257020, 'I(4, 2, \'Tetrahedra\', 18246, false, 2, \'1 Triangles\', 105, false, 2, \'2 Triangles\', 98, false, 1, \'Disk\', \'295 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 2, 0, 6, 0, 714812, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 114954, false, 3, \'Matrix bandwidth\', 21.9967, \'%5.1f\', 1, \'Disk\', \'2 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 1, 0, 714812, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'801 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 71076, 'I(1, 0, \'Adaptive Pass 12\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0283453, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 13'
				$begin 'StartInfo'
					I(1, 'Frequency', '3.6GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 40628, 'I(2, 2, \'Tetrahedra\', 23724, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 90852, 'I(2, 2, \'Tetrahedra\', 23724, false, 1, \'Disk\', \'6.85 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 2, 0, 321000, 'I(4, 2, \'Tetrahedra\', 23724, false, 2, \'1 Triangles\', 111, false, 2, \'2 Triangles\', 102, false, 1, \'Disk\', \'376 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 3, 0, 9, 0, 948452, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 149722, false, 3, \'Matrix bandwidth\', 22.0513, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 1, 0, 948452, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.01 MB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 71080, 'I(1, 0, \'Adaptive Pass 13\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0145194, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 14'
				$begin 'StartInfo'
					I(1, 'Frequency', '3.6GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 1, 0, 1, 0, 48180, 'I(2, 2, \'Tetrahedra\', 30843, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 102696, 'I(2, 2, \'Tetrahedra\', 30843, false, 1, \'Disk\', \'8.99 KB\')', true, true)
				ProfileItem('Matrix Assembly', 1, 0, 3, 0, 402856, 'I(4, 2, \'Tetrahedra\', 30843, false, 2, \'1 Triangles\', 113, false, 2, \'2 Triangles\', 106, false, 1, \'Disk\', \'228 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 4, 0, 13, 0, 1264644, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 194926, false, 3, \'Matrix bandwidth\', 22.0976, \'%5.1f\', 1, \'Disk\', \'2 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 1, 0, 1264644, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.31 MB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 71048, 'I(1, 0, \'Adaptive Pass 14\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0169913, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 15'
				$begin 'StartInfo'
					I(1, 'Frequency', '3.6GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 1, 0, 1, 0, 55856, 'I(2, 2, \'Tetrahedra\', 40102, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 123320, 'I(2, 2, \'Tetrahedra\', 40102, false, 1, \'Disk\', \'12.9 KB\')', true, true)
				ProfileItem('Matrix Assembly', 1, 0, 4, 0, 507928, 'I(4, 2, \'Tetrahedra\', 40102, false, 2, \'1 Triangles\', 123, false, 2, \'2 Triangles\', 112, false, 1, \'Disk\', \'600 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 6, 0, 19, 0, 1683724, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 253668, false, 3, \'Matrix bandwidth\', 22.1294, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 2, 0, 1683724, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.7 MB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 71048, 'I(1, 0, \'Adaptive Pass 15\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0100811, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileFootnote('I(1, 0, \'Adaptive Passes did not converge\')', 1)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Frequency Sweep'
			$begin 'StartInfo'
				I(1, 'Time', '12/01/2023 09:34:24')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:01:45')
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
					I(1, 'Time', '12/01/2023 09:34:24')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(1, 'Elapsed Time', '00:01:45')
				$end 'TotalInfo'
				GroupOptions=4
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'From 1.8GHz to 5.8GHz, 4000 Frequencies\')', false, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 5.8GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:21')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 129084, 'I(2, 2, \'Tetrahedra\', 40102, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 2, 0, 252744, 'I(4, 2, \'Tetrahedra\', 40102, false, 2, \'1 Triangles\', 123, false, 2, \'2 Triangles\', 112, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 17, 0, 16, 0, 580496, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 253668, false, 3, \'Matrix bandwidth\', 22.1294, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 580496, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 1.8GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:21')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 129180, 'I(2, 2, \'Tetrahedra\', 40102, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 2, 0, 253216, 'I(4, 2, \'Tetrahedra\', 40102, false, 2, \'1 Triangles\', 123, false, 2, \'2 Triangles\', 112, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 17, 0, 16, 0, 578964, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 253668, false, 3, \'Matrix bandwidth\', 22.1294, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 578964, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 3.8GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:21')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 127444, 'I(2, 2, \'Tetrahedra\', 40102, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 2, 0, 251512, 'I(4, 2, \'Tetrahedra\', 40102, false, 2, \'1 Triangles\', 123, false, 2, \'2 Triangles\', 112, false, 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 17, 0, 16, 0, 578684, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 253668, false, 3, \'Matrix bandwidth\', 22.1294, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 578684, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.33 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 2.8GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:21')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 126604, 'I(2, 2, \'Tetrahedra\', 40102, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 2, 0, 250784, 'I(4, 2, \'Tetrahedra\', 40102, false, 2, \'1 Triangles\', 123, false, 2, \'2 Triangles\', 112, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 17, 0, 16, 0, 576436, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 253668, false, 3, \'Matrix bandwidth\', 22.1294, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 576436, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 1, Frequency: 5.8GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 2, Frequency: 1.8GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 3, Frequency: 3.8GHz; S Matrix Error = 613.075%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 4, Frequency: 2.8GHz; S Matrix Error = 127.343%\')', false, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 4.8GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:22')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 128556, 'I(2, 2, \'Tetrahedra\', 40102, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 2, 0, 252996, 'I(4, 2, \'Tetrahedra\', 40102, false, 2, \'1 Triangles\', 123, false, 2, \'2 Triangles\', 112, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 18, 0, 17, 0, 579120, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 253668, false, 3, \'Matrix bandwidth\', 22.1294, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 579120, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 3.3GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:23')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 129440, 'I(2, 2, \'Tetrahedra\', 40102, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 2, 0, 253224, 'I(4, 2, \'Tetrahedra\', 40102, false, 2, \'1 Triangles\', 123, false, 2, \'2 Triangles\', 112, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 18, 0, 17, 0, 580764, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 253668, false, 3, \'Matrix bandwidth\', 22.1294, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 580764, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 2.3GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:23')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 127648, 'I(2, 2, \'Tetrahedra\', 40102, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 2, 0, 251688, 'I(4, 2, \'Tetrahedra\', 40102, false, 2, \'1 Triangles\', 123, false, 2, \'2 Triangles\', 112, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 19, 0, 18, 0, 578932, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 253668, false, 3, \'Matrix bandwidth\', 22.1294, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 578932, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 4.3GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:23')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 126284, 'I(2, 2, \'Tetrahedra\', 40102, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 2, 0, 251064, 'I(4, 2, \'Tetrahedra\', 40102, false, 2, \'1 Triangles\', 123, false, 2, \'2 Triangles\', 112, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 19, 0, 18, 0, 577256, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 253668, false, 3, \'Matrix bandwidth\', 22.1294, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 577256, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 5, Frequency: 4.8GHz; S Matrix Error =  83.403%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 6, Frequency: 3.3GHz; S Matrix Error =  39.454%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 7, Frequency: 2.3GHz; S Matrix Error =   3.099%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 8, Frequency: 4.3GHz; S Matrix Error =  11.402%\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 73664, 'I(1, 0, \'Frequency Group #2; Interpolating frequency sweep\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Frequency: 3.6GHz has already been solved\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 9, Frequency: 3.6GHz; S Matrix Error =  10.539%\')', false, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 4.05GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:25')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #3\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 128916, 'I(2, 2, \'Tetrahedra\', 40102, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 2, 0, 252936, 'I(4, 2, \'Tetrahedra\', 40102, false, 2, \'1 Triangles\', 123, false, 2, \'2 Triangles\', 112, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 21, 0, 20, 0, 579640, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 253668, false, 3, \'Matrix bandwidth\', 22.1294, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 579640, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.33 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 5.3GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:25')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #3\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 128412, 'I(2, 2, \'Tetrahedra\', 40102, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 2, 0, 252528, 'I(4, 2, \'Tetrahedra\', 40102, false, 2, \'1 Triangles\', 123, false, 2, \'2 Triangles\', 112, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 20, 0, 19, 0, 578724, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 253668, false, 3, \'Matrix bandwidth\', 22.1294, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 578724, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 4.55GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:25')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #3\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 127340, 'I(2, 2, \'Tetrahedra\', 40102, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 3, 0, 2, 0, 251284, 'I(4, 2, \'Tetrahedra\', 40102, false, 2, \'1 Triangles\', 123, false, 2, \'2 Triangles\', 112, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 21, 0, 20, 0, 577640, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 253668, false, 3, \'Matrix bandwidth\', 22.1294, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 577640, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 3.7GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:25')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #3\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 126540, 'I(2, 2, \'Tetrahedra\', 40102, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 3, 0, 2, 0, 250144, 'I(4, 2, \'Tetrahedra\', 40102, false, 2, \'1 Triangles\', 123, false, 2, \'2 Triangles\', 112, false, 1, \'Disk\', \'2 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 20, 0, 20, 0, 577792, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 253668, false, 3, \'Matrix bandwidth\', 22.1294, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 577792, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.33 KB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 10, Frequency: 4.05GHz; S Matrix Error =   8.047%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 11, Frequency: 5.3GHz; S Matrix Error =   4.599%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 12, Frequency: 4.55GHz; S Matrix Error =   2.126%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 13, Frequency: 3.7GHz; S Matrix Error =   0.401%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 73668, 'I(1, 0, \'Frequency Group #3; Interpolating frequency sweep\')', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 4.175GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:21')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #4\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 129020, 'I(2, 2, \'Tetrahedra\', 40102, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 2, 0, 252496, 'I(4, 2, \'Tetrahedra\', 40102, false, 2, \'1 Triangles\', 123, false, 2, \'2 Triangles\', 112, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 17, 0, 16, 0, 580560, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 253668, false, 3, \'Matrix bandwidth\', 22.1294, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 580560, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.33 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 3.925GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:21')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #4\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 129092, 'I(2, 2, \'Tetrahedra\', 40102, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 2, 0, 252924, 'I(4, 2, \'Tetrahedra\', 40102, false, 2, \'1 Triangles\', 123, false, 2, \'2 Triangles\', 112, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 17, 0, 16, 0, 579040, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 253668, false, 3, \'Matrix bandwidth\', 22.1294, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 579040, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.33 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 4.425GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:21')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #4\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 127872, 'I(2, 2, \'Tetrahedra\', 40102, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 2, 0, 251856, 'I(4, 2, \'Tetrahedra\', 40102, false, 2, \'1 Triangles\', 123, false, 2, \'2 Triangles\', 112, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 17, 0, 16, 0, 579176, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 253668, false, 3, \'Matrix bandwidth\', 22.1294, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 579176, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 5.55GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:21')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #4\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 126636, 'I(2, 2, \'Tetrahedra\', 40102, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 2, 0, 250728, 'I(4, 2, \'Tetrahedra\', 40102, false, 2, \'1 Triangles\', 123, false, 2, \'2 Triangles\', 112, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 17, 0, 16, 0, 578720, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 253668, false, 3, \'Matrix bandwidth\', 22.1294, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 578720, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 14, Frequency: 4.175GHz; S Matrix Error =   0.125%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 15, Frequency: 3.925GHz; Scattering matrix quantities converged; Passive within tolerance\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 73688, 'I(1, 0, \'Frequency Group #4; Interpolating frequency sweep\')', true, true)
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
			ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'66.9 MB\')', false, true)
			ProfileItem('Initial Meshing', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:01\', 1, \'Total Memory\', \'82.2 MB\')', false, true)
			ProfileItem('Adaptive Meshing', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:01:16\', 1, \'Average memory/process\', \'1.61 GB\', 1, \'Max memory/process\', \'1.61 GB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 4, false)', false, true)
			ProfileItem('Frequency Sweep', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:01:45\', 1, \'Average memory/process\', \'565 MB\', 1, \'Max memory/process\', \'567 MB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 4, false)', false, true)
			ProfileFootnote('I(3, 2, \'Max solved tets\', 40102, false, 2, \'Max matrix size\', 253668, false, 1, \'Matrix bandwidth\', \'22.1\')', 0)
		$end 'ProfileGroup'
		ProfileFootnote('I(2, 1, \'Stop Time\', \'12/01/2023 09:36:10\', 1, \'Status\', \'Normal Completion\')', 0)
	$end 'ProfileGroup'
$end 'Profile'
