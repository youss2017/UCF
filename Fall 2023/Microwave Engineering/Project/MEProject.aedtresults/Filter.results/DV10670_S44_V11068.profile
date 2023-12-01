$begin 'Profile'
	$begin 'ProfileGroup'
		MajorVer=2023
		MinorVer=2
		Name='Solution Process'
		$begin 'StartInfo'
			I(1, 'Start Time', '11/30/2023 11:37:07')
			I(1, 'Host', 'URANIUM')
			I(1, 'Processor', '16')
			I(1, 'OS', 'NT 10.0')
			I(1, 'Product', 'HFSS Version 2023.2.0')
		$end 'StartInfo'
		$begin 'TotalInfo'
			I(1, 'Elapsed Time', '00:03:53')
			I(1, 'ComEngine Memory', '72.6 M')
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
			ProfileItem('Machine', 0, 0, 0, 0, 0, 'I(5, 1, \'Name\', \'uranium\', 1, \'Memory\', \'15.4 GB\', 3, \'RAM Limit\', 90, \'%f%%\', 2, \'Cores\', 4, false, 1, \'Free Disk Space\', \'94 GB\')', false, true)
		$end 'ProfileGroup'
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Allow off core\', \'True\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Solution Basis Order\', \'1\')', false, true)
		ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(1, 0, \'Elapsed time : 00:00:00 , HFSS ComEngine Memory : 67 M\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Perform full validations with standard port validations\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Initial Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '11/30/2023 11:37:07')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:02')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Mesh', 0, 0, 0, 0, 28384, 'I(2, 1, \'Type\', \'Phi\', 2, \'Tetrahedra\', 356, false)', true, true)
			ProfileItem('Post', 0, 0, 0, 0, 30664, 'I(2, 2, \'Tetrahedra\', 478, false, 2, \'Cores\', 1, false)', true, true)
			ProfileItem('Lambda Refine', 0, 0, 0, 0, 18508, 'I(2, 2, \'Tetrahedra\', 811, false, 2, \'Cores\', 1, false)', true, true)
			ProfileItem('Simulation Setup', 0, 0, 0, 0, 40108, 'I(1, 1, \'Disk\', \'0 Bytes\')', true, true)
			ProfileItem('Port Adapt', 1, 0, 1, 0, 52664, 'I(2, 2, \'Tetrahedra\', 811, false, 1, \'Disk\', \'82 KB\')', true, true)
			ProfileItem('Port Refine', 0, 0, 0, 0, 18428, 'I(2, 2, \'Tetrahedra\', 1109, false, 2, \'Cores\', 1, false)', true, true)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Adaptive Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '11/30/2023 11:37:10')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:01:42')
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
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 42740, 'I(2, 2, \'Tetrahedra\', 1109, false, 1, \'Disk\', \'4.12 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 58028, 'I(4, 2, \'Tetrahedra\', 1109, false, 2, \'1 Triangles\', 94, false, 2, \'2 Triangles\', 92, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 71352, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 6242, false, 3, \'Matrix bandwidth\', 19.0481, \'%5.1f\', 1, \'Disk\', \'1.63 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 71352, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'148 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 70680, 'I(1, 0, \'Adaptive Pass 1\')', true, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 19288, 'I(2, 2, \'Tetrahedra\', 1442, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 43272, 'I(2, 2, \'Tetrahedra\', 1442, false, 1, \'Disk\', \'3.74 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 61308, 'I(4, 2, \'Tetrahedra\', 1442, false, 2, \'1 Triangles\', 94, false, 2, \'2 Triangles\', 92, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 81920, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 8352, false, 3, \'Matrix bandwidth\', 19.7572, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 81920, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'84 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 70872, 'I(1, 0, \'Adaptive Pass 2\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 1.48603, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 19592, 'I(2, 2, \'Tetrahedra\', 1878, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 43724, 'I(2, 2, \'Tetrahedra\', 1878, false, 1, \'Disk\', \'3.74 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 66404, 'I(4, 2, \'Tetrahedra\', 1878, false, 2, \'1 Triangles\', 94, false, 2, \'2 Triangles\', 92, false, 1, \'Disk\', \'2 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 97028, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 11116, false, 3, \'Matrix bandwidth\', 20.3292, \'%5.1f\', 1, \'Disk\', \'2 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 97028, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'103 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 70888, 'I(1, 0, \'Adaptive Pass 3\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 1.7184, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 20200, 'I(2, 2, \'Tetrahedra\', 2443, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 44512, 'I(2, 2, \'Tetrahedra\', 2443, false, 1, \'Disk\', \'4.12 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 72676, 'I(4, 2, \'Tetrahedra\', 2443, false, 2, \'1 Triangles\', 94, false, 2, \'2 Triangles\', 92, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 117696, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 14706, false, 3, \'Matrix bandwidth\', 20.7625, \'%5.1f\', 1, \'Disk\', \'2 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 117696, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'718 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 70892, 'I(1, 0, \'Adaptive Pass 4\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.146558, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 20732, 'I(2, 2, \'Tetrahedra\', 3086, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 46092, 'I(2, 2, \'Tetrahedra\', 3086, false, 1, \'Disk\', \'3.74 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 81272, 'I(4, 2, \'Tetrahedra\', 3086, false, 2, \'1 Triangles\', 94, false, 2, \'2 Triangles\', 92, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 140604, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 18798, false, 3, \'Matrix bandwidth\', 21.0776, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 140604, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'144 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 70896, 'I(1, 0, \'Adaptive Pass 5\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.188727, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 21308, 'I(2, 2, \'Tetrahedra\', 3734, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 46880, 'I(2, 2, \'Tetrahedra\', 3734, false, 1, \'Disk\', \'3.74 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 88220, 'I(4, 2, \'Tetrahedra\', 3734, false, 2, \'1 Triangles\', 94, false, 2, \'2 Triangles\', 92, false, 1, \'Disk\', \'3 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 159316, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 22898, false, 3, \'Matrix bandwidth\', 21.2514, \'%5.1f\', 1, \'Disk\', \'2 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 159316, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'155 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 70896, 'I(1, 0, \'Adaptive Pass 6\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0850126, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 22036, 'I(2, 2, \'Tetrahedra\', 4505, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 48660, 'I(2, 2, \'Tetrahedra\', 4505, false, 1, \'Disk\', \'4.12 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 1, 0, 96424, 'I(4, 2, \'Tetrahedra\', 4505, false, 2, \'1 Triangles\', 94, false, 2, \'2 Triangles\', 92, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 184564, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 27778, false, 3, \'Matrix bandwidth\', 21.4103, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 184564, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'181 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 71000, 'I(1, 0, \'Adaptive Pass 7\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0219556, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 23968, 'I(2, 2, \'Tetrahedra\', 5858, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 51760, 'I(2, 2, \'Tetrahedra\', 5858, false, 1, \'Disk\', \'4.12 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 1, 0, 112980, 'I(4, 2, \'Tetrahedra\', 5858, false, 2, \'1 Triangles\', 94, false, 2, \'2 Triangles\', 92, false, 1, \'Disk\', \'2 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 1, 0, 2, 0, 237832, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 36368, false, 3, \'Matrix bandwidth\', 21.5791, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 237832, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'267 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 71044, 'I(1, 0, \'Adaptive Pass 8\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0602863, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 25520, 'I(2, 2, \'Tetrahedra\', 7627, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 54756, 'I(2, 2, \'Tetrahedra\', 7627, false, 1, \'Disk\', \'4.12 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 1, 0, 133480, 'I(4, 2, \'Tetrahedra\', 7627, false, 2, \'1 Triangles\', 96, false, 2, \'2 Triangles\', 94, false, 1, \'Disk\', \'155 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 1, 0, 4, 0, 303124, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 47546, false, 3, \'Matrix bandwidth\', 21.7059, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 1, 0, 303124, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'341 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 71056, 'I(1, 0, \'Adaptive Pass 9\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0322676, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 27512, 'I(2, 2, \'Tetrahedra\', 9918, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 60328, 'I(2, 2, \'Tetrahedra\', 9918, false, 1, \'Disk\', \'4.12 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 2, 0, 159676, 'I(4, 2, \'Tetrahedra\', 9918, false, 2, \'1 Triangles\', 98, false, 2, \'2 Triangles\', 96, false, 1, \'Disk\', \'154 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 1, 0, 5, 0, 383884, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 62088, false, 3, \'Matrix bandwidth\', 21.8179, \'%5.1f\', 1, \'Disk\', \'1 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 383884, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'436 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 71076, 'I(1, 0, \'Adaptive Pass 10\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.032688, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 30492, 'I(2, 2, \'Tetrahedra\', 12906, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 65504, 'I(2, 2, \'Tetrahedra\', 12906, false, 1, \'Disk\', \'3.74 KB\')', true, true)
				ProfileItem('Matrix Assembly', 1, 0, 2, 0, 195148, 'I(4, 2, \'Tetrahedra\', 12906, false, 2, \'1 Triangles\', 102, false, 2, \'2 Triangles\', 100, false, 1, \'Disk\', \'298 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 2, 0, 6, 0, 503292, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 81038, false, 3, \'Matrix bandwidth\', 21.9069, \'%5.1f\', 1, \'Disk\', \'6 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 1, 0, 503292, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'570 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 71136, 'I(1, 0, \'Adaptive Pass 11\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0167623, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 1, 0, 1, 0, 34000, 'I(2, 2, \'Tetrahedra\', 16781, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 73516, 'I(2, 2, \'Tetrahedra\', 16781, false, 1, \'Disk\', \'6.26 KB\')', true, true)
				ProfileItem('Matrix Assembly', 1, 0, 3, 0, 240000, 'I(4, 2, \'Tetrahedra\', 16781, false, 2, \'1 Triangles\', 106, false, 2, \'2 Triangles\', 104, false, 1, \'Disk\', \'306 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 3, 0, 9, 0, 648252, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 105622, false, 3, \'Matrix bandwidth\', 21.9799, \'%5.1f\', 1, \'Disk\', \'2 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 1, 0, 648252, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'737 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 71080, 'I(1, 0, \'Adaptive Pass 12\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0145765, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 1, 0, 1, 0, 39232, 'I(2, 2, \'Tetrahedra\', 21816, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 84244, 'I(2, 2, \'Tetrahedra\', 21816, false, 1, \'Disk\', \'6.64 KB\')', true, true)
				ProfileItem('Matrix Assembly', 1, 0, 4, 0, 298932, 'I(4, 2, \'Tetrahedra\', 21816, false, 2, \'1 Triangles\', 110, false, 2, \'2 Triangles\', 110, false, 1, \'Disk\', \'376 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 4, 0, 13, 0, 864648, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 137588, false, 3, \'Matrix bandwidth\', 22.0401, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 2, 0, 864648, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'952 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 71104, 'I(1, 0, \'Adaptive Pass 13\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.00994423, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 1, 0, 1, 0, 44708, 'I(2, 2, \'Tetrahedra\', 28363, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 98444, 'I(2, 2, \'Tetrahedra\', 28363, false, 1, \'Disk\', \'9.16 KB\')', true, true)
				ProfileItem('Matrix Assembly', 1, 0, 5, 0, 373868, 'I(4, 2, \'Tetrahedra\', 28363, false, 2, \'1 Triangles\', 116, false, 2, \'2 Triangles\', 114, false, 1, \'Disk\', \'373 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 6, 0, 18, 0, 1149240, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 179110, false, 3, \'Matrix bandwidth\', 22.0852, \'%5.1f\', 1, \'Disk\', \'2 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 2, 0, 1149240, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.2 MB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 71140, 'I(1, 0, \'Adaptive Pass 14\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.00732101, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 2, 0, 2, 0, 53600, 'I(2, 2, \'Tetrahedra\', 36884, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 1, 0, 1, 0, 117208, 'I(2, 2, \'Tetrahedra\', 36884, false, 1, \'Disk\', \'11.9 KB\')', true, true)
				ProfileItem('Matrix Assembly', 2, 0, 6, 0, 471376, 'I(4, 2, \'Tetrahedra\', 36884, false, 2, \'1 Triangles\', 122, false, 2, \'2 Triangles\', 122, false, 1, \'Disk\', \'527 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 8, 0, 25, 0, 1544800, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 233204, false, 3, \'Matrix bandwidth\', 22.1189, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 3, 0, 1544800, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'1.56 MB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 71148, 'I(1, 0, \'Adaptive Pass 15\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.00701571, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileFootnote('I(1, 0, \'Adaptive Passes did not converge\')', 1)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Frequency Sweep'
			$begin 'StartInfo'
				I(1, 'Time', '11/30/2023 11:38:52')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:02:08')
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
					I(1, 'Time', '11/30/2023 11:38:52')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(1, 'Elapsed Time', '00:02:07')
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
						I(0, 'Elapsed time : 00:00:28')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 122408, 'I(2, 2, \'Tetrahedra\', 36884, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 4, 0, 4, 0, 235836, 'I(4, 2, \'Tetrahedra\', 36884, false, 2, \'1 Triangles\', 122, false, 2, \'2 Triangles\', 122, false, 1, \'Disk\', \'25 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 22, 0, 22, 0, 543980, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 233204, false, 3, \'Matrix bandwidth\', 22.1189, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 543980, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 1.8GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:28')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 121936, 'I(2, 2, \'Tetrahedra\', 36884, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 4, 0, 4, 0, 235588, 'I(4, 2, \'Tetrahedra\', 36884, false, 2, \'1 Triangles\', 122, false, 2, \'2 Triangles\', 122, false, 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 22, 0, 22, 0, 544152, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 233204, false, 3, \'Matrix bandwidth\', 22.1189, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 544152, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 3.8GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:28')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 120472, 'I(2, 2, \'Tetrahedra\', 36884, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 4, 0, 4, 0, 234432, 'I(4, 2, \'Tetrahedra\', 36884, false, 2, \'1 Triangles\', 122, false, 2, \'2 Triangles\', 122, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 22, 0, 22, 0, 541988, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 233204, false, 3, \'Matrix bandwidth\', 22.1189, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 541988, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.33 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 2.8GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:27')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 1, 0, 119572, 'I(2, 2, \'Tetrahedra\', 36884, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 4, 0, 4, 0, 232964, 'I(4, 2, \'Tetrahedra\', 36884, false, 2, \'1 Triangles\', 122, false, 2, \'2 Triangles\', 122, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 22, 0, 22, 0, 542420, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 233204, false, 3, \'Matrix bandwidth\', 22.1189, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 542420, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 1, Frequency: 5.8GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 2, Frequency: 1.8GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 3, Frequency: 3.8GHz; S Matrix Error = 203.230%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 4, Frequency: 2.8GHz; S Matrix Error =  19.408%\')', false, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 4.8GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:28')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 1, 0, 1, 0, 121752, 'I(2, 2, \'Tetrahedra\', 36884, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 4, 0, 4, 0, 235388, 'I(4, 2, \'Tetrahedra\', 36884, false, 2, \'1 Triangles\', 122, false, 2, \'2 Triangles\', 122, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 22, 0, 22, 0, 543724, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 233204, false, 3, \'Matrix bandwidth\', 22.1189, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 543724, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.33 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 3.3GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:28')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 1, 0, 1, 0, 121472, 'I(2, 2, \'Tetrahedra\', 36884, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 4, 0, 4, 0, 234748, 'I(4, 2, \'Tetrahedra\', 36884, false, 2, \'1 Triangles\', 122, false, 2, \'2 Triangles\', 122, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 22, 0, 22, 0, 543544, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 233204, false, 3, \'Matrix bandwidth\', 22.1189, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 543544, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.33 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 2.3GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:28')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 1, 0, 1, 0, 119904, 'I(2, 2, \'Tetrahedra\', 36884, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 4, 0, 4, 0, 233444, 'I(4, 2, \'Tetrahedra\', 36884, false, 2, \'1 Triangles\', 122, false, 2, \'2 Triangles\', 122, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 22, 0, 22, 0, 541668, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 233204, false, 3, \'Matrix bandwidth\', 22.1189, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 541668, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 4.3GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:28')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem('Simulation Setup ', 1, 0, 1, 0, 119712, 'I(2, 2, \'Tetrahedra\', 36884, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 4, 0, 4, 0, 233340, 'I(4, 2, \'Tetrahedra\', 36884, false, 2, \'1 Triangles\', 122, false, 2, \'2 Triangles\', 122, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 22, 0, 22, 0, 541596, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 233204, false, 3, \'Matrix bandwidth\', 22.1189, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 541596, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 5, Frequency: 4.8GHz; S Matrix Error =  33.191%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 6, Frequency: 3.3GHz; S Matrix Error =  77.466%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 7, Frequency: 2.3GHz; S Matrix Error =  17.122%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 8, Frequency: 4.3GHz; S Matrix Error =  21.185%\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 73840, 'I(1, 0, \'Frequency Group #2; Interpolating frequency sweep\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Frequency: 3.6GHz has already been solved\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 9, Frequency: 3.6GHz; S Matrix Error =  16.778%\')', false, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 4.05GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:28')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #3\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 1, 0, 1, 0, 121716, 'I(2, 2, \'Tetrahedra\', 36884, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 4, 0, 4, 0, 235432, 'I(4, 2, \'Tetrahedra\', 36884, false, 2, \'1 Triangles\', 122, false, 2, \'2 Triangles\', 122, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 22, 0, 22, 0, 543872, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 233204, false, 3, \'Matrix bandwidth\', 22.1189, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 543872, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 5.3GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:29')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #3\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 1, 0, 1, 0, 121656, 'I(2, 2, \'Tetrahedra\', 36884, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 4, 0, 4, 0, 235560, 'I(4, 2, \'Tetrahedra\', 36884, false, 2, \'1 Triangles\', 122, false, 2, \'2 Triangles\', 122, false, 1, \'Disk\', \'16 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 22, 0, 22, 0, 544048, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 233204, false, 3, \'Matrix bandwidth\', 22.1189, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 544048, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 4.55GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:29')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #3\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 1, 0, 1, 0, 119916, 'I(2, 2, \'Tetrahedra\', 36884, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 4, 0, 4, 0, 233352, 'I(4, 2, \'Tetrahedra\', 36884, false, 2, \'1 Triangles\', 122, false, 2, \'2 Triangles\', 122, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 23, 0, 22, 0, 542044, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 233204, false, 3, \'Matrix bandwidth\', 22.1189, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 542044, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 3.45GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:28')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #3\')', false, true)
					ProfileItem('Simulation Setup ', 1, 0, 1, 0, 119456, 'I(2, 2, \'Tetrahedra\', 36884, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 4, 0, 4, 0, 232536, 'I(4, 2, \'Tetrahedra\', 36884, false, 2, \'1 Triangles\', 122, false, 2, \'2 Triangles\', 122, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 22, 0, 22, 0, 541308, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 233204, false, 3, \'Matrix bandwidth\', 22.1189, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 541308, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.33 KB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 10, Frequency: 4.05GHz; S Matrix Error =  10.639%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 11, Frequency: 5.3GHz; S Matrix Error =  15.747%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 12, Frequency: 4.55GHz; S Matrix Error =  22.397%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 13, Frequency: 3.45GHz; S Matrix Error =  11.229%\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 73864, 'I(1, 0, \'Frequency Group #3; Interpolating frequency sweep\')', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 4.175GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:28')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #4\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 1, 0, 1, 0, 122228, 'I(2, 2, \'Tetrahedra\', 36884, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 4, 0, 4, 0, 235900, 'I(4, 2, \'Tetrahedra\', 36884, false, 2, \'1 Triangles\', 122, false, 2, \'2 Triangles\', 122, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 22, 0, 22, 0, 544480, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 233204, false, 3, \'Matrix bandwidth\', 22.1189, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 544480, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.33 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 4.425GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:28')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #4\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 1, 0, 1, 0, 121564, 'I(2, 2, \'Tetrahedra\', 36884, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 4, 0, 4, 0, 235144, 'I(4, 2, \'Tetrahedra\', 36884, false, 2, \'1 Triangles\', 122, false, 2, \'2 Triangles\', 122, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 22, 0, 22, 0, 543560, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 233204, false, 3, \'Matrix bandwidth\', 22.1189, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 543560, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 3.925GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:28')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #4\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 1, 0, 1, 0, 120424, 'I(2, 2, \'Tetrahedra\', 36884, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 4, 0, 4, 0, 234548, 'I(4, 2, \'Tetrahedra\', 36884, false, 2, \'1 Triangles\', 122, false, 2, \'2 Triangles\', 122, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 22, 0, 22, 0, 542564, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 233204, false, 3, \'Matrix bandwidth\', 22.1189, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 542564, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.33 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 5.55GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:28')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #4\')', false, true)
					ProfileItem('Simulation Setup ', 1, 0, 0, 0, 119752, 'I(2, 2, \'Tetrahedra\', 36884, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 4, 0, 4, 0, 233328, 'I(4, 2, \'Tetrahedra\', 36884, false, 2, \'1 Triangles\', 122, false, 2, \'2 Triangles\', 122, false, 1, \'Disk\', \'47 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 22, 0, 22, 0, 541216, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 233204, false, 3, \'Matrix bandwidth\', 22.1189, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 541216, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.33 KB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 14, Frequency: 4.175GHz; S Matrix Error =   3.704%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 15, Frequency: 4.425GHz; S Matrix Error =   0.090%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 16, Frequency: 3.925GHz; Scattering matrix quantities converged; Passive within tolerance\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 73876, 'I(1, 0, \'Frequency Group #4; Interpolating frequency sweep\')', true, true)
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
			ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'67 MB\')', false, true)
			ProfileItem('Initial Meshing', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:02\', 1, \'Total Memory\', \'81.4 MB\')', false, true)
			ProfileItem('Adaptive Meshing', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:01:42\', 1, \'Average memory/process\', \'1.47 GB\', 1, \'Max memory/process\', \'1.47 GB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 4, false)', false, true)
			ProfileItem('Frequency Sweep', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:02:08\', 1, \'Average memory/process\', \'530 MB\', 1, \'Max memory/process\', \'532 MB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 4, false)', false, true)
			ProfileFootnote('I(3, 2, \'Max solved tets\', 36884, false, 2, \'Max matrix size\', 233204, false, 1, \'Matrix bandwidth\', \'22.1\')', 0)
		$end 'ProfileGroup'
		ProfileFootnote('I(2, 1, \'Stop Time\', \'11/30/2023 11:41:00\', 1, \'Status\', \'Normal Completion\')', 0)
	$end 'ProfileGroup'
$end 'Profile'
