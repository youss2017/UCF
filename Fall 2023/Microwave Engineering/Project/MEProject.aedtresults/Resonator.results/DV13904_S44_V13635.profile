$begin 'Profile'
	$begin 'ProfileGroup'
		MajorVer=2023
		MinorVer=2
		Name='Solution Process'
		$begin 'StartInfo'
			I(1, 'Start Time', '12/01/2023 11:12:41')
			I(1, 'Host', 'URANIUM')
			I(1, 'Processor', '16')
			I(1, 'OS', 'NT 10.0')
			I(1, 'Product', 'HFSS Version 2023.2.0')
		$end 'StartInfo'
		$begin 'TotalInfo'
			I(1, 'Elapsed Time', '00:00:37')
			I(1, 'ComEngine Memory', '75 M')
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
		ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(1, 0, \'Elapsed time : 00:00:00 , HFSS ComEngine Memory : 74.6 M\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Perform full validations with standard port validations\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Initial Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '12/01/2023 11:12:41')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:01')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Mesh', 0, 0, 0, 0, 26832, 'I(2, 1, \'Type\', \'Phi\', 2, \'Tetrahedra\', 148, false)', true, true)
			ProfileItem('Post', 0, 0, 0, 0, 28032, 'I(2, 2, \'Tetrahedra\', 148, false, 2, \'Cores\', 1, false)', true, true)
			ProfileItem('Lambda Refine', 0, 0, 0, 0, 17120, 'I(2, 2, \'Tetrahedra\', 235, false, 2, \'Cores\', 1, false)', true, true)
			ProfileItem('Simulation Setup', 0, 0, 0, 0, 38004, 'I(1, 1, \'Disk\', \'0 Bytes\')', true, true)
			ProfileItem('Port Adapt', 0, 0, 0, 0, 48088, 'I(2, 2, \'Tetrahedra\', 235, false, 1, \'Disk\', \'80.5 KB\')', true, true)
			ProfileItem('Port Refine', 0, 0, 0, 0, 17576, 'I(2, 2, \'Tetrahedra\', 507, false, 2, \'Cores\', 1, false)', true, true)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Adaptive Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '12/01/2023 11:12:43')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:25')
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
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 39924, 'I(2, 2, \'Tetrahedra\', 507, false, 1, \'Disk\', \'4.24 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 49284, 'I(4, 2, \'Tetrahedra\', 507, false, 2, \'1 Triangles\', 97, false, 2, \'2 Triangles\', 102, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 55112, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 2392, false, 3, \'Matrix bandwidth\', 14.8808, \'%5.1f\', 1, \'Disk\', \'1.62 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 55112, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'310 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 76036, 'I(1, 0, \'Adaptive Pass 1\')', true, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 17876, 'I(2, 2, \'Tetrahedra\', 662, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 40336, 'I(2, 2, \'Tetrahedra\', 662, false, 1, \'Disk\', \'4.62 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 50752, 'I(4, 2, \'Tetrahedra\', 662, false, 2, \'1 Triangles\', 97, false, 2, \'2 Triangles\', 102, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 59436, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 3324, false, 3, \'Matrix bandwidth\', 15.984, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 59436, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'204 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 76036, 'I(1, 0, \'Adaptive Pass 2\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.16082, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 18060, 'I(2, 2, \'Tetrahedra\', 863, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 40976, 'I(2, 2, \'Tetrahedra\', 863, false, 1, \'Disk\', \'4.52 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 53260, 'I(4, 2, \'Tetrahedra\', 863, false, 2, \'1 Triangles\', 97, false, 2, \'2 Triangles\', 102, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 62224, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 4506, false, 3, \'Matrix bandwidth\', 17.0195, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 62224, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'54.2 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 76044, 'I(1, 0, \'Adaptive Pass 3\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.283905, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 18328, 'I(2, 2, \'Tetrahedra\', 1126, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 41648, 'I(2, 2, \'Tetrahedra\', 1126, false, 1, \'Disk\', \'4.52 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 56116, 'I(4, 2, \'Tetrahedra\', 1126, false, 2, \'1 Triangles\', 97, false, 2, \'2 Triangles\', 102, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 69504, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 6054, false, 3, \'Matrix bandwidth\', 17.7822, \'%5.1f\', 1, \'Disk\', \'4 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 69504, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'338 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 76044, 'I(1, 0, \'Adaptive Pass 4\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.145399, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 18896, 'I(2, 2, \'Tetrahedra\', 1469, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 42640, 'I(2, 2, \'Tetrahedra\', 1469, false, 1, \'Disk\', \'4.52 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 59952, 'I(4, 2, \'Tetrahedra\', 1469, false, 2, \'1 Triangles\', 97, false, 2, \'2 Triangles\', 102, false, 1, \'Disk\', \'18 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 77644, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 8128, false, 3, \'Matrix bandwidth\', 18.5229, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 77644, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'80 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 76048, 'I(1, 0, \'Adaptive Pass 5\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0759822, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 19252, 'I(2, 2, \'Tetrahedra\', 1910, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 43840, 'I(2, 2, \'Tetrahedra\', 1910, false, 1, \'Disk\', \'4.52 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 64236, 'I(4, 2, \'Tetrahedra\', 1910, false, 2, \'1 Triangles\', 97, false, 2, \'2 Triangles\', 102, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 88644, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 10756, false, 3, \'Matrix bandwidth\', 18.9569, \'%5.1f\', 1, \'Disk\', \'2 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 88644, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'97.4 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 76052, 'I(1, 0, \'Adaptive Pass 6\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0693432, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 19896, 'I(2, 2, \'Tetrahedra\', 2488, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 44296, 'I(2, 2, \'Tetrahedra\', 2488, false, 1, \'Disk\', \'4.52 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 70948, 'I(4, 2, \'Tetrahedra\', 2488, false, 2, \'1 Triangles\', 97, false, 2, \'2 Triangles\', 102, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 104072, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 14258, false, 3, \'Matrix bandwidth\', 19.4285, \'%5.1f\', 1, \'Disk\', \'1 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 104072, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'121 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 76056, 'I(1, 0, \'Adaptive Pass 7\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0248116, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 20520, 'I(2, 2, \'Tetrahedra\', 3240, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 46768, 'I(2, 2, \'Tetrahedra\', 3240, false, 1, \'Disk\', \'4.52 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 79316, 'I(4, 2, \'Tetrahedra\', 3240, false, 2, \'1 Triangles\', 97, false, 2, \'2 Triangles\', 104, false, 1, \'Disk\', \'75 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 124344, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 18866, false, 3, \'Matrix bandwidth\', 19.838, \'%5.1f\', 1, \'Disk\', \'1 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 124344, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'936 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 76056, 'I(1, 0, \'Adaptive Pass 8\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0174972, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 21348, 'I(2, 2, \'Tetrahedra\', 4213, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 48276, 'I(2, 2, \'Tetrahedra\', 4213, false, 1, \'Disk\', \'4.52 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 90440, 'I(4, 2, \'Tetrahedra\', 4213, false, 2, \'1 Triangles\', 99, false, 2, \'2 Triangles\', 104, false, 1, \'Disk\', \'77 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 153004, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 24850, false, 3, \'Matrix bandwidth\', 20.1817, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 153004, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'191 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 76056, 'I(1, 0, \'Adaptive Pass 9\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0156161, \'%.5f\')', false, true)
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
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 23100, 'I(2, 2, \'Tetrahedra\', 5479, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 50312, 'I(2, 2, \'Tetrahedra\', 5479, false, 1, \'Disk\', \'3.15 KB\')', true, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 103748, 'I(4, 2, \'Tetrahedra\', 5479, false, 2, \'1 Triangles\', 101, false, 2, \'2 Triangles\', 104, false, 1, \'Disk\', \'77 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 187372, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 32576, false, 3, \'Matrix bandwidth\', 20.3839, \'%5.1f\', 1, \'Disk\', \'2 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 187372, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'244 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 76056, 'I(1, 0, \'Adaptive Pass 10\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.00604903, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileFootnote('I(1, 0, \'Adaptive Passes converged\')', 0)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Frequency Sweep'
			$begin 'StartInfo'
				I(1, 'Time', '12/01/2023 11:13:08')
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
					I(1, 'Time', '12/01/2023 11:13:08')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(1, 'Elapsed Time', '00:00:10')
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
						I(0, 'Elapsed time : 00:00:02')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 60480, 'I(2, 2, \'Tetrahedra\', 5479, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 80856, 'I(4, 2, \'Tetrahedra\', 5479, false, 2, \'1 Triangles\', 101, false, 2, \'2 Triangles\', 104, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 1, 0, 1, 0, 120384, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 32576, false, 3, \'Matrix bandwidth\', 20.3839, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 120384, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 1GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:02')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 59300, 'I(2, 2, \'Tetrahedra\', 5479, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 79264, 'I(4, 2, \'Tetrahedra\', 5479, false, 2, \'1 Triangles\', 101, false, 2, \'2 Triangles\', 104, false, 1, \'Disk\', \'2 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 1, 0, 1, 0, 118660, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 32576, false, 3, \'Matrix bandwidth\', 20.3839, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 118660, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 3GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:02')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 59744, 'I(2, 2, \'Tetrahedra\', 5479, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 80208, 'I(4, 2, \'Tetrahedra\', 5479, false, 2, \'1 Triangles\', 101, false, 2, \'2 Triangles\', 104, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 1, 0, 1, 0, 119848, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 32576, false, 3, \'Matrix bandwidth\', 20.3839, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 119848, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 2GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:02')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 59444, 'I(2, 2, \'Tetrahedra\', 5479, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 79688, 'I(4, 2, \'Tetrahedra\', 5479, false, 2, \'1 Triangles\', 101, false, 2, \'2 Triangles\', 104, false, 1, \'Disk\', \'2 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 1, 0, 1, 0, 119256, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 32576, false, 3, \'Matrix bandwidth\', 20.3839, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 119256, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 1, Frequency: 5GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 2, Frequency: 1GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 3, Frequency: 3GHz; S Matrix Error = 421.180%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 4, Frequency: 2GHz; S Matrix Error =   4.868%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Frequency: 3.6GHz has already been solved\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 5, Frequency: 3.6GHz; S Matrix Error =   0.167%; Secondary solver criterion is not converged\')', false, true)
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 60348, 'I(2, 2, \'Tetrahedra\', 5479, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 80744, 'I(4, 2, \'Tetrahedra\', 5479, false, 2, \'1 Triangles\', 101, false, 2, \'2 Triangles\', 104, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 1, 0, 1, 0, 119516, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 32576, false, 3, \'Matrix bandwidth\', 20.3839, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 119516, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 3.3GHz'
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 59496, 'I(2, 2, \'Tetrahedra\', 5479, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 80056, 'I(4, 2, \'Tetrahedra\', 5479, false, 2, \'1 Triangles\', 101, false, 2, \'2 Triangles\', 104, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 1, 0, 1, 0, 118716, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 32576, false, 3, \'Matrix bandwidth\', 20.3839, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 118716, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 2.5GHz'
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 59768, 'I(2, 2, \'Tetrahedra\', 5479, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 80028, 'I(4, 2, \'Tetrahedra\', 5479, false, 2, \'1 Triangles\', 101, false, 2, \'2 Triangles\', 104, false, 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 1, 0, 1, 0, 119532, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 32576, false, 3, \'Matrix bandwidth\', 20.3839, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 119532, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
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
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 59560, 'I(2, 2, \'Tetrahedra\', 5479, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 0, 0, 0, 0, 80036, 'I(4, 2, \'Tetrahedra\', 5479, false, 2, \'1 Triangles\', 101, false, 2, \'2 Triangles\', 104, false, 1, \'Disk\', \'2 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 1, 0, 1, 0, 119484, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 32576, false, 3, \'Matrix bandwidth\', 20.3839, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 119484, 'I(2, 2, \'Excitations\', 2, false, 1, \'Disk\', \'3.32 KB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 6, Frequency: 4.3GHz; S Matrix Error =   0.050%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 7, Frequency: 3.3GHz; S Matrix Error =   0.028%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 8, Frequency: 2.5GHz; Scattering matrix quantities converged; Passive within tolerance\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 76132, 'I(1, 0, \'Frequency Group #2; Interpolating frequency sweep\')', true, true)
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
			ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'74.6 MB\')', false, true)
			ProfileItem('Initial Meshing', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:01\', 1, \'Total Memory\', \'74.3 MB\')', false, true)
			ProfileItem('Adaptive Meshing', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:00:25\', 1, \'Average memory/process\', \'183 MB\', 1, \'Max memory/process\', \'183 MB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 4, false)', false, true)
			ProfileItem('Frequency Sweep', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:00:10\', 1, \'Average memory/process\', \'117 MB\', 1, \'Max memory/process\', \'118 MB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 4, false)', false, true)
			ProfileFootnote('I(3, 2, \'Max solved tets\', 5479, false, 2, \'Max matrix size\', 32576, false, 1, \'Matrix bandwidth\', \'20.4\')', 0)
		$end 'ProfileGroup'
		ProfileFootnote('I(2, 1, \'Stop Time\', \'12/01/2023 11:13:18\', 1, \'Status\', \'Normal Completion\')', 0)
	$end 'ProfileGroup'
$end 'Profile'
