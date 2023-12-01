$begin 'Profile'
	$begin 'ProfileGroup'
		MajorVer=2023
		MinorVer=2
		Name='Solution Process'
		$begin 'StartInfo'
			I(1, 'Start Time', '12/01/2023 11:11:57')
			I(1, 'Host', 'URANIUM')
			I(1, 'Processor', '16')
			I(1, 'OS', 'NT 10.0')
			I(1, 'Product', 'HFSS Version 2023.2.0')
		$end 'StartInfo'
		$begin 'TotalInfo'
			I(1, 'Elapsed Time', '00:00:41')
			I(1, 'ComEngine Memory', '74.6 M')
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
			ProfileItem('Machine', 0, 0, 0, 0, 0, 'I(5, 1, \'Name\', \'uranium\', 1, \'Memory\', \'15.4 GB\', 3, \'RAM Limit\', 90, \'%f%%\', 2, \'Cores\', 4, false, 1, \'Free Disk Space\', \'91.9 GB\')', false, true)
		$end 'ProfileGroup'
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Allow off core\', \'True\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Solution Basis Order\', \'1\')', false, true)
		ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(1, 0, \'Elapsed time : 00:00:00 , HFSS ComEngine Memory : 73.3 M\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Perform full validations with standard port validations\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Initial Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '12/01/2023 11:11:57')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:01')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Mesh', 0, 0, 0, 0, 26888, 'I(2, 1, \'Type\', \'Phi\', 2, \'Tetrahedra\', 144, false)', true, true)
			ProfileItem('Post', 0, 0, 0, 0, 28088, 'I(2, 2, \'Tetrahedra\', 144, false, 2, \'Cores\', 1, false)', true, true)
			ProfileItem('Lambda Refine', 0, 0, 0, 0, 17124, 'I(2, 2, \'Tetrahedra\', 226, false, 2, \'Cores\', 1, false)', true, true)
			ProfileItem('Simulation Setup', 0, 0, 0, 0, 37960, 'I(1, 1, \'Disk\', \'0 Bytes\')', true, true)
			ProfileItem('Port Adapt', 0, 0, 0, 0, 47904, 'I(2, 2, \'Tetrahedra\', 226, false, 1, \'Disk\', \'80.5 KB\')', true, true)
			ProfileItem('Port Refine', 0, 0, 0, 0, 17488, 'I(2, 2, \'Tetrahedra\', 512, false, 2, \'Cores\', 1, false)', true, true)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Adaptive Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '12/01/2023 11:11:59')
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
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 39888, 'I(2, 2, \'Tetrahedra\', 512, false, 1, \'Disk\', \'4.9 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 49228, 'I(4, 2, \'Tetrahedra\', 512, false, 2, \'1 Triangles\', 94, false, 2, \'2 Triangles\', 102, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 54568, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 2424, false, 3, \'Matrix bandwidth\', 14.9682, \'%5.1f\', 1, \'Disk\', \'1.62 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 54568, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'314 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 75200, 'I(1, 0, \'Adaptive Pass 1\')', true, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 17888, 'I(2, 2, \'Tetrahedra\', 671, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 40404, 'I(2, 2, \'Tetrahedra\', 671, false, 1, \'Disk\', \'4.52 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 50716, 'I(4, 2, \'Tetrahedra\', 671, false, 2, \'1 Triangles\', 94, false, 2, \'2 Triangles\', 102, false, 1, \'Disk\', \'16 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 59208, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 3370, false, 3, \'Matrix bandwidth\', 16.2221, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 59208, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'205 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 75308, 'I(1, 0, \'Adaptive Pass 2\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.318987, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 18028, 'I(2, 2, \'Tetrahedra\', 875, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 41144, 'I(2, 2, \'Tetrahedra\', 875, false, 1, \'Disk\', \'4.52 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 53148, 'I(4, 2, \'Tetrahedra\', 875, false, 2, \'1 Triangles\', 94, false, 2, \'2 Triangles\', 102, false, 1, \'Disk\', \'20 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 63356, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 4572, false, 3, \'Matrix bandwidth\', 17.1586, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 63356, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'474 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 75320, 'I(1, 0, \'Adaptive Pass 3\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.09616, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 18312, 'I(2, 2, \'Tetrahedra\', 1138, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 41464, 'I(2, 2, \'Tetrahedra\', 1138, false, 1, \'Disk\', \'4.52 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 56088, 'I(4, 2, \'Tetrahedra\', 1138, false, 2, \'1 Triangles\', 94, false, 2, \'2 Triangles\', 102, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 69540, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 6152, false, 3, \'Matrix bandwidth\', 17.9865, \'%5.1f\', 1, \'Disk\', \'4 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 69540, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'60.7 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 75320, 'I(1, 0, \'Adaptive Pass 4\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0384788, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 18976, 'I(2, 2, \'Tetrahedra\', 1481, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 42536, 'I(2, 2, \'Tetrahedra\', 1481, false, 1, \'Disk\', \'4.52 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 59384, 'I(4, 2, \'Tetrahedra\', 1481, false, 2, \'1 Triangles\', 94, false, 2, \'2 Triangles\', 102, false, 1, \'Disk\', \'2 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 76428, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 8188, false, 3, \'Matrix bandwidth\', 18.5442, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 76428, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'74.6 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 75388, 'I(1, 0, \'Adaptive Pass 5\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0795707, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 19352, 'I(2, 2, \'Tetrahedra\', 1926, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 43244, 'I(2, 2, \'Tetrahedra\', 1926, false, 1, \'Disk\', \'4.52 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 64612, 'I(4, 2, \'Tetrahedra\', 1926, false, 2, \'1 Triangles\', 94, false, 2, \'2 Triangles\', 102, false, 1, \'Disk\', \'1 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 88848, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 10850, false, 3, \'Matrix bandwidth\', 19.0088, \'%5.1f\', 1, \'Disk\', \'2 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 88848, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'92.5 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 75392, 'I(1, 0, \'Adaptive Pass 6\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0456446, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 19880, 'I(2, 2, \'Tetrahedra\', 2512, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 44068, 'I(2, 2, \'Tetrahedra\', 2512, false, 1, \'Disk\', \'4.52 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 70428, 'I(4, 2, \'Tetrahedra\', 2512, false, 2, \'1 Triangles\', 94, false, 2, \'2 Triangles\', 102, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 103916, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 14442, false, 3, \'Matrix bandwidth\', 19.503, \'%5.1f\', 1, \'Disk\', \'1 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 103916, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'725 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 75456, 'I(1, 0, \'Adaptive Pass 7\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0426668, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 20448, 'I(2, 2, \'Tetrahedra\', 3268, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 45820, 'I(2, 2, \'Tetrahedra\', 3268, false, 1, \'Disk\', \'4.52 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 79828, 'I(4, 2, \'Tetrahedra\', 3268, false, 2, \'1 Triangles\', 94, false, 2, \'2 Triangles\', 102, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 123156, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 19054, false, 3, \'Matrix bandwidth\', 19.8851, \'%5.1f\', 1, \'Disk\', \'1 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 123156, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'938 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 75456, 'I(1, 0, \'Adaptive Pass 8\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0210075, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 21976, 'I(2, 2, \'Tetrahedra\', 4251, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 48016, 'I(2, 2, \'Tetrahedra\', 4251, false, 1, \'Disk\', \'2.77 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 90632, 'I(4, 2, \'Tetrahedra\', 4251, false, 2, \'1 Triangles\', 96, false, 2, \'2 Triangles\', 106, false, 1, \'Disk\', \'225 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 151724, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 25048, false, 3, \'Matrix bandwidth\', 20.1505, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 151724, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'188 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 75528, 'I(1, 0, \'Adaptive Pass 9\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0130066, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 23324, 'I(2, 2, \'Tetrahedra\', 5533, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 50448, 'I(2, 2, \'Tetrahedra\', 5533, false, 1, \'Disk\', \'2.77 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 104604, 'I(4, 2, \'Tetrahedra\', 5533, false, 2, \'1 Triangles\', 98, false, 2, \'2 Triangles\', 108, false, 1, \'Disk\', \'150 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 189472, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 32950, false, 3, \'Matrix bandwidth\', 20.4531, \'%5.1f\', 1, \'Disk\', \'2 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 189472, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'244 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 75540, 'I(1, 0, \'Adaptive Pass 10\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0110002, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 24808, 'I(2, 2, \'Tetrahedra\', 7197, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 53776, 'I(2, 2, \'Tetrahedra\', 7197, false, 1, \'Disk\', \'2.39 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 1, 0, 122828, 'I(4, 2, \'Tetrahedra\', 7197, false, 2, \'1 Triangles\', 100, false, 2, \'2 Triangles\', 109, false, 1, \'Disk\', \'150 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 2, 0, 246048, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 43192, false, 3, \'Matrix bandwidth\', 20.6757, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 246048, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'313 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 75644, 'I(1, 0, \'Adaptive Pass 11\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.00868972, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileFootnote('I(1, 0, \'Adaptive Passes converged\')', 0)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Frequency Sweep'
			$begin 'StartInfo'
				I(1, 'Time', '12/01/2023 11:12:27')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:12')
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
					I(1, 'Time', '12/01/2023 11:12:27')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(1, 'Elapsed Time', '00:00:11')
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
						I(0, 'Elapsed time : 00:00:03')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 63792, 'I(2, 2, \'Tetrahedra\', 7197, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 89192, 'I(4, 2, \'Tetrahedra\', 7197, false, 2, \'1 Triangles\', 100, false, 2, \'2 Triangles\', 109, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 1, 0, 1, 0, 142592, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 43192, false, 3, \'Matrix bandwidth\', 20.6757, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 142592, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 1GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:03')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 63352, 'I(2, 2, \'Tetrahedra\', 7197, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 88416, 'I(4, 2, \'Tetrahedra\', 7197, false, 2, \'1 Triangles\', 100, false, 2, \'2 Triangles\', 109, false, 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 1, 0, 1, 0, 142556, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 43192, false, 3, \'Matrix bandwidth\', 20.6757, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 142556, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 3GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:03')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 62480, 'I(2, 2, \'Tetrahedra\', 7197, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 87620, 'I(4, 2, \'Tetrahedra\', 7197, false, 2, \'1 Triangles\', 100, false, 2, \'2 Triangles\', 109, false, 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 1, 0, 1, 0, 140256, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 43192, false, 3, \'Matrix bandwidth\', 20.6757, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 140256, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 2GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:03')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 62240, 'I(2, 2, \'Tetrahedra\', 7197, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 87592, 'I(4, 2, \'Tetrahedra\', 7197, false, 2, \'1 Triangles\', 100, false, 2, \'2 Triangles\', 109, false, 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 1, 0, 1, 0, 141176, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 43192, false, 3, \'Matrix bandwidth\', 20.6757, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 141176, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 1, Frequency: 5GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 2, Frequency: 1GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 3, Frequency: 3GHz; S Matrix Error = 423.638%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 4, Frequency: 2GHz; S Matrix Error =   4.819%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Frequency: 3.6GHz has already been solved\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 5, Frequency: 3.6GHz; S Matrix Error =   0.160%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 4.3GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:02')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 63884, 'I(2, 2, \'Tetrahedra\', 7197, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 89244, 'I(4, 2, \'Tetrahedra\', 7197, false, 2, \'1 Triangles\', 100, false, 2, \'2 Triangles\', 109, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 1, 0, 1, 0, 143340, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 43192, false, 3, \'Matrix bandwidth\', 20.6757, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 143340, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 3.3GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:03')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 62804, 'I(2, 2, \'Tetrahedra\', 7197, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 87908, 'I(4, 2, \'Tetrahedra\', 7197, false, 2, \'1 Triangles\', 100, false, 2, \'2 Triangles\', 109, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 1, 0, 1, 0, 141420, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 43192, false, 3, \'Matrix bandwidth\', 20.6757, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 141420, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 2.5GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:03')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 62900, 'I(2, 2, \'Tetrahedra\', 7197, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 87940, 'I(4, 2, \'Tetrahedra\', 7197, false, 2, \'1 Triangles\', 100, false, 2, \'2 Triangles\', 109, false, 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 1, 0, 1, 0, 141928, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 43192, false, 3, \'Matrix bandwidth\', 20.6757, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 141928, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 1.5GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:02')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 62564, 'I(2, 2, \'Tetrahedra\', 7197, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 87204, 'I(4, 2, \'Tetrahedra\', 7197, false, 2, \'1 Triangles\', 100, false, 2, \'2 Triangles\', 109, false, 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 1, 0, 1, 0, 141048, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 43192, false, 3, \'Matrix bandwidth\', 20.6757, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 141048, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 6, Frequency: 4.3GHz; S Matrix Error =   0.040%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 7, Frequency: 3.3GHz; S Matrix Error =   0.026%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 8, Frequency: 2.5GHz; Scattering matrix quantities converged; Passive within tolerance\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 75736, 'I(1, 0, \'Frequency Group #2; Interpolating frequency sweep\')', true, true)
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
			ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'73.3 MB\')', false, true)
			ProfileItem('Initial Meshing', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:01\', 1, \'Total Memory\', \'74.2 MB\')', false, true)
			ProfileItem('Adaptive Meshing', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:00:27\', 1, \'Average memory/process\', \'240 MB\', 1, \'Max memory/process\', \'240 MB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 4, false)', false, true)
			ProfileItem('Frequency Sweep', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:00:12\', 1, \'Average memory/process\', \'138 MB\', 1, \'Max memory/process\', \'140 MB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 4, false)', false, true)
			ProfileFootnote('I(3, 2, \'Max solved tets\', 7197, false, 2, \'Max matrix size\', 43192, false, 1, \'Matrix bandwidth\', \'20.7\')', 0)
		$end 'ProfileGroup'
		ProfileFootnote('I(2, 1, \'Stop Time\', \'12/01/2023 11:12:39\', 1, \'Status\', \'Normal Completion\')', 0)
	$end 'ProfileGroup'
$end 'Profile'
