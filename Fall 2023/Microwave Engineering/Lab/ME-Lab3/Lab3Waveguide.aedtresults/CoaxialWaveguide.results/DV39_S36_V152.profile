$begin 'Profile'
	$begin 'ProfileGroup'
		MajorVer=2023
		MinorVer=2
		Name='Solution Process'
		$begin 'StartInfo'
			I(1, 'Start Time', '10/09/2023 17:18:30')
			I(1, 'Host', 'URANIUM')
			I(1, 'Processor', '16')
			I(1, 'OS', 'NT 10.0')
			I(1, 'Product', 'HFSS Version 2023.2.0')
		$end 'StartInfo'
		$begin 'TotalInfo'
			I(1, 'Elapsed Time', '00:01:56')
			I(1, 'ComEngine Memory', '68.8 M')
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
			ProfileItem('Machine', 0, 0, 0, 0, 0, 'I(5, 1, \'Name\', \'uranium\', 1, \'Memory\', \'15.4 GB\', 3, \'RAM Limit\', 90, \'%f%%\', 2, \'Cores\', 4, false, 1, \'Free Disk Space\', \'99.6 GB\')', false, true)
		$end 'ProfileGroup'
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Allow off core\', \'True\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Solution Basis Order\', \'1\')', false, true)
		ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(1, 0, \'Elapsed time : 00:00:00 , HFSS ComEngine Memory : 62.3 M\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Perform full validations with standard port validations\')', false, true)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Initial Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '10/09/2023 17:18:30')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:02')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			ProfileItem('Lambda Refine', 0, 0, 0, 0, 18508, 'I(2, 2, \'Tetrahedra\', 1442, false, 2, \'Cores\', 1, false)', true, true)
			ProfileItem('Simulation Setup', 0, 0, 0, 0, 41788, 'I(1, 1, \'Disk\', \'0 Bytes\')', true, true)
			ProfileItem('Port Adapt', 2, 0, 1, 0, 55520, 'I(2, 2, \'Tetrahedra\', 930, false, 1, \'Disk\', \'157 KB\')', true, true)
			ProfileItem('Port Refine', 0, 0, 0, 0, 19148, 'I(2, 2, \'Tetrahedra\', 1664, false, 2, \'Cores\', 1, false)', true, true)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Adaptive Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '10/09/2023 17:18:33')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:43')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 1'
				$begin 'StartInfo'
					I(1, 'Frequency', '25GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 43264, 'I(2, 2, \'Tetrahedra\', 1154, false, 1, \'Disk\', \'2.98 KB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.000e+00 and propagation constant is   1.516e+02\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   1.995e+00 and propagation constant is   1.520e+02\')', false, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 58656, 'I(4, 2, \'Tetrahedra\', 1154, false, 2, \'1 Triangles\', 109, false, 2, \'2 Triangles\', 117, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 71800, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 6846, false, 3, \'Matrix bandwidth\', 16.7014, \'%5.1f\', 1, \'Disk\', \'1.63 KB\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 71800, 'I(2, 2, \'Excitations\', 4, false, 1, \'Disk\', \'421 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 66140, 'I(1, 0, \'Adaptive Pass 1\')', true, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 2'
				$begin 'StartInfo'
					I(1, 'Frequency', '25GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 19956, 'I(2, 2, \'Tetrahedra\', 2012, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 44016, 'I(2, 2, \'Tetrahedra\', 1516, false, 1, \'Disk\', \'2.98 KB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.001e+00 and propagation constant is   1.515e+02\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.008e+00 and propagation constant is   1.510e+02\')', false, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 62504, 'I(4, 2, \'Tetrahedra\', 1516, false, 2, \'1 Triangles\', 109, false, 2, \'2 Triangles\', 117, false, 1, \'Disk\', \'26 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 80296, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 9082, false, 3, \'Matrix bandwidth\', 17.9067, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 80296, 'I(2, 2, \'Excitations\', 4, false, 1, \'Disk\', \'74.3 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 66356, 'I(1, 0, \'Adaptive Pass 2\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.552679, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 3'
				$begin 'StartInfo'
					I(1, 'Frequency', '25GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 20296, 'I(2, 2, \'Tetrahedra\', 2472, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 45180, 'I(2, 2, \'Tetrahedra\', 1981, false, 1, \'Disk\', \'3.92 KB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.003e+00 and propagation constant is   1.514e+02\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.013e+00 and propagation constant is   1.506e+02\')', false, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 68500, 'I(4, 2, \'Tetrahedra\', 1981, false, 2, \'1 Triangles\', 109, false, 2, \'2 Triangles\', 117, false, 1, \'Disk\', \'96 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 0, 0, 93840, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 11996, false, 3, \'Matrix bandwidth\', 18.8662, \'%5.1f\', 1, \'Disk\', \'2 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 93840, 'I(2, 2, \'Excitations\', 4, false, 1, \'Disk\', \'92.6 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 66388, 'I(1, 0, \'Adaptive Pass 3\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.336949, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 4'
				$begin 'StartInfo'
					I(1, 'Frequency', '25GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 20968, 'I(2, 2, \'Tetrahedra\', 3070, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 46960, 'I(2, 2, \'Tetrahedra\', 2570, false, 1, \'Disk\', \'3.92 KB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.003e+00 and propagation constant is   1.514e+02\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.015e+00 and propagation constant is   1.505e+02\')', false, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 75184, 'I(4, 2, \'Tetrahedra\', 2570, false, 2, \'1 Triangles\', 109, false, 2, \'2 Triangles\', 117, false, 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 112516, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 15648, false, 3, \'Matrix bandwidth\', 19.4233, \'%5.1f\', 1, \'Disk\', \'2 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 112516, 'I(2, 2, \'Excitations\', 4, false, 1, \'Disk\', \'115 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 66456, 'I(1, 0, \'Adaptive Pass 4\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0970453, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 5'
				$begin 'StartInfo'
					I(1, 'Frequency', '25GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 20992, 'I(2, 2, \'Tetrahedra\', 3594, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 47528, 'I(2, 2, \'Tetrahedra\', 3087, false, 1, \'Disk\', \'2.99 KB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.011e+00 and propagation constant is   1.507e+02\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.017e+00 and propagation constant is   1.503e+02\')', false, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 80100, 'I(4, 2, \'Tetrahedra\', 3087, false, 2, \'1 Triangles\', 111, false, 2, \'2 Triangles\', 117, false, 1, \'Disk\', \'27 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 128404, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 18840, false, 3, \'Matrix bandwidth\', 19.7476, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 128404, 'I(2, 2, \'Excitations\', 4, false, 1, \'Disk\', \'116 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 66488, 'I(1, 0, \'Adaptive Pass 5\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0177098, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 6'
				$begin 'StartInfo'
					I(1, 'Frequency', '25GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 22572, 'I(2, 2, \'Tetrahedra\', 4521, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 49400, 'I(2, 2, \'Tetrahedra\', 3980, false, 1, \'Disk\', \'2.99 KB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.019e+00 and propagation constant is   1.501e+02\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.023e+00 and propagation constant is   1.498e+02\')', false, true)
				ProfileItem('Matrix Assembly', 0, 0, 1, 0, 91612, 'I(4, 2, \'Tetrahedra\', 3980, false, 2, \'1 Triangles\', 115, false, 2, \'2 Triangles\', 119, false, 1, \'Disk\', \'467 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 1, 0, 157100, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 24400, false, 3, \'Matrix bandwidth\', 20.0862, \'%5.1f\', 1, \'Disk\', \'2 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 157100, 'I(2, 2, \'Excitations\', 4, false, 1, \'Disk\', \'170 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 66508, 'I(1, 0, \'Adaptive Pass 6\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0774343, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 7'
				$begin 'StartInfo'
					I(1, 'Frequency', '25GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 23648, 'I(2, 2, \'Tetrahedra\', 5716, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 51780, 'I(2, 2, \'Tetrahedra\', 5137, false, 1, \'Disk\', \'2.99 KB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.036e+00 and propagation constant is   1.487e+02\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.024e+00 and propagation constant is   1.498e+02\')', false, true)
				ProfileItem('Matrix Assembly', 0, 0, 0, 0, 104256, 'I(4, 2, \'Tetrahedra\', 5137, false, 2, \'1 Triangles\', 123, false, 2, \'2 Triangles\', 119, false, 1, \'Disk\', \'569 Bytes\')', true, true)
				ProfileItem('Matrix Solve', 0, 0, 2, 0, 202936, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 31484, false, 3, \'Matrix bandwidth\', 20.2968, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 202936, 'I(2, 2, \'Excitations\', 4, false, 1, \'Disk\', \'218 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 66548, 'I(1, 0, \'Adaptive Pass 7\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.0752435, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 8'
				$begin 'StartInfo'
					I(1, 'Frequency', '25GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 25384, 'I(2, 2, \'Tetrahedra\', 7259, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 55288, 'I(2, 2, \'Tetrahedra\', 6644, false, 1, \'Disk\', \'2.78 KB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.045e+00 and propagation constant is   1.481e+02\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.030e+00 and propagation constant is   1.493e+02\')', false, true)
				ProfileItem('Matrix Assembly', 0, 0, 1, 0, 120984, 'I(4, 2, \'Tetrahedra\', 6644, false, 2, \'1 Triangles\', 131, false, 2, \'2 Triangles\', 125, false, 1, \'Disk\', \'1.01 KB\')', true, true)
				ProfileItem('Matrix Solve', 1, 0, 3, 0, 263876, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 40722, false, 3, \'Matrix bandwidth\', 20.4792, \'%5.1f\', 1, \'Disk\', \'0 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 0, 0, 263876, 'I(2, 2, \'Excitations\', 4, false, 1, \'Disk\', \'281 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 66608, 'I(1, 0, \'Adaptive Pass 8\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.100306, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 9'
				$begin 'StartInfo'
					I(1, 'Frequency', '25GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 26820, 'I(2, 2, \'Tetrahedra\', 8821, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 59808, 'I(2, 2, \'Tetrahedra\', 8139, false, 1, \'Disk\', \'3.16 KB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.046e+00 and propagation constant is   1.480e+02\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   2.039e+00 and propagation constant is   1.486e+02\')', false, true)
				ProfileItem('Matrix Assembly', 1, 0, 1, 0, 137612, 'I(4, 2, \'Tetrahedra\', 8139, false, 2, \'1 Triangles\', 136, false, 2, \'2 Triangles\', 136, false, 1, \'Disk\', \'1.52 KB\')', true, true)
				ProfileItem('Matrix Solve', 1, 0, 4, 0, 322852, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 49940, false, 3, \'Matrix bandwidth\', 20.5782, \'%5.1f\', 1, \'Disk\', \'1 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 1, 0, 322852, 'I(2, 2, \'Excitations\', 4, false, 1, \'Disk\', \'306 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 66660, 'I(1, 0, \'Adaptive Pass 9\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.143214, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=2
				Name='Adaptive Pass 10'
				$begin 'StartInfo'
					I(1, 'Frequency', '25GHz')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('Adaptive Refine', 0, 0, 0, 0, 29600, 'I(2, 2, \'Tetrahedra\', 11263, false, 2, \'Cores\', 1, false)', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('Simulation Setup ', 0, 0, 0, 0, 64728, 'I(2, 2, \'Tetrahedra\', 10492, false, 1, \'Disk\', \'3.16 KB\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
				ProfileItem('Matrix Assembly', 1, 0, 2, 0, 162948, 'I(4, 2, \'Tetrahedra\', 10492, false, 2, \'1 Triangles\', 144, false, 2, \'2 Triangles\', 153, false, 1, \'Disk\', \'2.4 KB\')', true, true)
				ProfileItem('Matrix Solve', 2, 0, 6, 0, 420460, 'I(5, 1, \'Type\', \'DCS\', 2, \'Cores\', 4, false, 2, \'Matrix size\', 64584, false, 3, \'Matrix bandwidth\', 20.7236, \'%5.1f\', 1, \'Disk\', \'4 Bytes\')', true, true)
				ProfileItem('Field Recovery', 0, 0, 1, 0, 420460, 'I(2, 2, \'Excitations\', 4, false, 1, \'Disk\', \'441 KB\')', true, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 66684, 'I(1, 0, \'Adaptive Pass 10\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 3, \'Max Mag. Delta S\', 0.982879, \'%.5f\')', false, true)
			$end 'ProfileGroup'
			ProfileFootnote('I(1, 0, \'Adaptive Passes did not converge\')', 1)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=2
			Name='Frequency Sweep'
			$begin 'StartInfo'
				I(1, 'Time', '10/09/2023 17:19:16')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:01:10')
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
					I(1, 'Time', '10/09/2023 17:19:16')
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(1, 'Elapsed Time', '00:01:10')
				$end 'TotalInfo'
				GroupOptions=4
				TaskDataOptions('CPU Time'=8, Memory=8, 'Real Time'=8)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'From 12.5GHz to 37.5GHz, 401 Frequencies\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Frequency: 25GHz has already been solved\')', false, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 37.5GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:08')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 73800, 'I(2, 2, \'Tetrahedra\', 10492, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 2, 0, 109556, 'I(4, 2, \'Tetrahedra\', 10492, false, 2, \'1 Triangles\', 144, false, 2, \'2 Triangles\', 153, false, 1, \'Disk\', \'496 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 4, 0, 212116, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 64584, false, 3, \'Matrix bandwidth\', 20.7236, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'2 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 212116, 'I(2, 2, \'Excitations\', 4, false, 1, \'Disk\', \'8.3 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 12.5GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:08')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 73652, 'I(2, 2, \'Tetrahedra\', 10492, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 1, 0, 108880, 'I(4, 2, \'Tetrahedra\', 10492, false, 2, \'1 Triangles\', 144, false, 2, \'2 Triangles\', 153, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 4, 0, 211812, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 64584, false, 3, \'Matrix bandwidth\', 20.7236, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'2 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 211812, 'I(2, 2, \'Excitations\', 4, false, 1, \'Disk\', \'8.3 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 18.75GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:08')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 73308, 'I(2, 2, \'Tetrahedra\', 10492, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 1, 0, 109440, 'I(4, 2, \'Tetrahedra\', 10492, false, 2, \'1 Triangles\', 144, false, 2, \'2 Triangles\', 153, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 5, 0, 211612, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 64584, false, 3, \'Matrix bandwidth\', 20.7236, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'2 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 211612, 'I(2, 2, \'Excitations\', 4, false, 1, \'Disk\', \'8.3 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 31.25GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:08')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #1\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 72688, 'I(2, 2, \'Tetrahedra\', 10492, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 1, 0, 107672, 'I(4, 2, \'Tetrahedra\', 10492, false, 2, \'1 Triangles\', 144, false, 2, \'2 Triangles\', 153, false, 1, \'Disk\', \'499 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 5, 0, 209672, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 64584, false, 3, \'Matrix bandwidth\', 20.7236, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'2 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 209672, 'I(2, 2, \'Excitations\', 4, false, 1, \'Disk\', \'8.31 KB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 1, Frequency: 37.5GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 2, Frequency: 12.5GHz; Additional basis points are needed before the interpolation error can be computed.\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 3, Frequency: 25GHz; S Matrix Error = 207.984%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 4, Frequency: 18.75GHz; S Matrix Error = 529.802%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 5, Frequency: 31.25GHz; S Matrix Error = 287.493%\')', false, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 34.375GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:08')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 73932, 'I(2, 2, \'Tetrahedra\', 10492, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 1, 0, 108700, 'I(4, 2, \'Tetrahedra\', 10492, false, 2, \'1 Triangles\', 144, false, 2, \'2 Triangles\', 153, false, 1, \'Disk\', \'495 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 4, 0, 211808, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 64584, false, 3, \'Matrix bandwidth\', 20.7236, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 211808, 'I(2, 2, \'Excitations\', 4, false, 1, \'Disk\', \'8.29 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 28.125GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:08')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 73900, 'I(2, 2, \'Tetrahedra\', 10492, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 1, 0, 109536, 'I(4, 2, \'Tetrahedra\', 10492, false, 2, \'1 Triangles\', 144, false, 2, \'2 Triangles\', 153, false, 1, \'Disk\', \'448 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 5, 0, 212764, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 64584, false, 3, \'Matrix bandwidth\', 20.7236, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 212764, 'I(2, 2, \'Excitations\', 4, false, 1, \'Disk\', \'8.3 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 21.875GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:08')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 73268, 'I(2, 2, \'Tetrahedra\', 10492, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 1, 0, 108304, 'I(4, 2, \'Tetrahedra\', 10492, false, 2, \'1 Triangles\', 144, false, 2, \'2 Triangles\', 153, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 4, 0, 211740, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 64584, false, 3, \'Matrix bandwidth\', 20.7236, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 211740, 'I(2, 2, \'Excitations\', 4, false, 1, \'Disk\', \'8.3 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 15.625GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:08')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #2\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 72276, 'I(2, 2, \'Tetrahedra\', 10492, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 2, 0, 105984, 'I(4, 2, \'Tetrahedra\', 10492, false, 2, \'1 Triangles\', 144, false, 2, \'2 Triangles\', 153, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 4, 0, 210256, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 64584, false, 3, \'Matrix bandwidth\', 20.7236, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 210256, 'I(2, 2, \'Excitations\', 4, false, 1, \'Disk\', \'8.3 KB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 6, Frequency: 34.375GHz; S Matrix Error = 113.195%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 7, Frequency: 28.125GHz; S Matrix Error = 104.925%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 8, Frequency: 21.875GHz; S Matrix Error = 117.783%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 9, Frequency: 15.625GHz; S Matrix Error =  15.975%\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 69464, 'I(1, 0, \'Frequency Group #2; Interpolating frequency sweep\')', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 29.6875GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:08')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #3\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 73444, 'I(2, 2, \'Tetrahedra\', 10492, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 1, 0, 108596, 'I(4, 2, \'Tetrahedra\', 10492, false, 2, \'1 Triangles\', 144, false, 2, \'2 Triangles\', 153, false, 1, \'Disk\', \'490 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 4, 0, 211684, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 64584, false, 3, \'Matrix bandwidth\', 20.7236, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 211684, 'I(2, 2, \'Excitations\', 4, false, 1, \'Disk\', \'8.3 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 32.8125GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:08')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #3\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 72872, 'I(2, 2, \'Tetrahedra\', 10492, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 1, 0, 107720, 'I(4, 2, \'Tetrahedra\', 10492, false, 2, \'1 Triangles\', 144, false, 2, \'2 Triangles\', 153, false, 1, \'Disk\', \'495 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 4, 0, 211356, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 64584, false, 3, \'Matrix bandwidth\', 20.7236, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 211356, 'I(2, 2, \'Excitations\', 4, false, 1, \'Disk\', \'8.3 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 35.9375GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:08')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #3\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 72752, 'I(2, 2, \'Tetrahedra\', 10492, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 1, 0, 108268, 'I(4, 2, \'Tetrahedra\', 10492, false, 2, \'1 Triangles\', 144, false, 2, \'2 Triangles\', 153, false, 1, \'Disk\', \'496 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 4, 0, 211096, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 64584, false, 3, \'Matrix bandwidth\', 20.7236, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 211096, 'I(2, 2, \'Excitations\', 4, false, 1, \'Disk\', \'8.3 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 26.5625GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:08')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #3\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 72600, 'I(2, 2, \'Tetrahedra\', 10492, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 2, 0, 108064, 'I(4, 2, \'Tetrahedra\', 10492, false, 2, \'1 Triangles\', 144, false, 2, \'2 Triangles\', 153, false, 1, \'Disk\', \'350 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 4, 0, 210040, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 64584, false, 3, \'Matrix bandwidth\', 20.7236, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 210040, 'I(2, 2, \'Excitations\', 4, false, 1, \'Disk\', \'8.3 KB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 10, Frequency: 29.6875GHz; S Matrix Error =  66.463%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 11, Frequency: 32.8125GHz; S Matrix Error =  29.150%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 12, Frequency: 35.9375GHz; S Matrix Error =   6.162%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 13, Frequency: 26.5625GHz; S Matrix Error =   7.117%\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 69492, 'I(1, 0, \'Frequency Group #3; Interpolating frequency sweep\')', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 25.78125GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:08')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #4\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 74040, 'I(2, 2, \'Tetrahedra\', 10492, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 1, 0, 109084, 'I(4, 2, \'Tetrahedra\', 10492, false, 2, \'1 Triangles\', 144, false, 2, \'2 Triangles\', 153, false, 1, \'Disk\', \'218 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 4, 0, 212720, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 64584, false, 3, \'Matrix bandwidth\', 20.7236, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 212720, 'I(2, 2, \'Excitations\', 4, false, 1, \'Disk\', \'8.3 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 27.34375GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:08')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #4\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 73056, 'I(2, 2, \'Tetrahedra\', 10492, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 1, 0, 108816, 'I(4, 2, \'Tetrahedra\', 10492, false, 2, \'1 Triangles\', 144, false, 2, \'2 Triangles\', 153, false, 1, \'Disk\', \'412 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 4, 0, 211560, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 64584, false, 3, \'Matrix bandwidth\', 20.7236, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 211560, 'I(2, 2, \'Excitations\', 4, false, 1, \'Disk\', \'8.3 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 23.4375GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:09')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #4\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 72804, 'I(2, 2, \'Tetrahedra\', 10492, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 1, 0, 107996, 'I(4, 2, \'Tetrahedra\', 10492, false, 2, \'1 Triangles\', 144, false, 2, \'2 Triangles\', 153, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 4, 0, 210292, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 64584, false, 3, \'Matrix bandwidth\', 20.7236, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 210292, 'I(2, 2, \'Excitations\', 4, false, 1, \'Disk\', \'8.31 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 28.90625GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:08')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #4\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 72620, 'I(2, 2, \'Tetrahedra\', 10492, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 1, 0, 107684, 'I(4, 2, \'Tetrahedra\', 10492, false, 2, \'1 Triangles\', 144, false, 2, \'2 Triangles\', 153, false, 1, \'Disk\', \'483 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 4, 0, 210848, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 64584, false, 3, \'Matrix bandwidth\', 20.7236, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 210848, 'I(2, 2, \'Excitations\', 4, false, 1, \'Disk\', \'8.29 KB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 14, Frequency: 25.78125GHz; S Matrix Error =   3.266%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 15, Frequency: 27.34375GHz; S Matrix Error =   0.683%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 16, Frequency: 23.4375GHz; S Matrix Error =   0.566%\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 17, Frequency: 28.90625GHz; S Matrix Error =   0.222%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 69604, 'I(1, 0, \'Frequency Group #4; Interpolating frequency sweep\')', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 24.21875GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:08')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #5\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 74124, 'I(2, 2, \'Tetrahedra\', 10492, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 1, 0, 109856, 'I(4, 2, \'Tetrahedra\', 10492, false, 2, \'1 Triangles\', 144, false, 2, \'2 Triangles\', 153, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 3, 0, 211984, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 64584, false, 3, \'Matrix bandwidth\', 20.7236, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 211984, 'I(2, 2, \'Excitations\', 4, false, 1, \'Disk\', \'8.31 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 25.390625GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:08')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #5\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 73308, 'I(2, 2, \'Tetrahedra\', 10492, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 1, 0, 108108, 'I(4, 2, \'Tetrahedra\', 10492, false, 2, \'1 Triangles\', 144, false, 2, \'2 Triangles\', 153, false, 1, \'Disk\', \'109 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 3, 0, 212080, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 64584, false, 3, \'Matrix bandwidth\', 20.7236, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 212080, 'I(2, 2, \'Excitations\', 4, false, 1, \'Disk\', \'8.3 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 36.71875GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:09')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #5\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 73036, 'I(2, 2, \'Tetrahedra\', 10492, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 1, 0, 107960, 'I(4, 2, \'Tetrahedra\', 10492, false, 2, \'1 Triangles\', 144, false, 2, \'2 Triangles\', 153, false, 1, \'Disk\', \'497 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 3, 0, 211468, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 64584, false, 3, \'Matrix bandwidth\', 20.7236, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 211468, 'I(2, 2, \'Excitations\', 4, false, 1, \'Disk\', \'8.3 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 26.171875GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:08')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #5\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 72244, 'I(2, 2, \'Tetrahedra\', 10492, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 1, 0, 108360, 'I(4, 2, \'Tetrahedra\', 10492, false, 2, \'1 Triangles\', 144, false, 2, \'2 Triangles\', 153, false, 1, \'Disk\', \'293 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 3, 0, 210780, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 64584, false, 3, \'Matrix bandwidth\', 20.7236, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 210780, 'I(2, 2, \'Excitations\', 4, false, 1, \'Disk\', \'8.3 KB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 18, Frequency: 24.21875GHz; S Matrix Error =   0.402%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 19, Frequency: 25.390625GHz; S Matrix Error =   0.185%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 20, Frequency: 36.71875GHz; S Matrix Error =   0.075%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 21, Frequency: 26.171875GHz; S Matrix Error =   0.064%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 69844, 'I(1, 0, \'Frequency Group #5; Interpolating frequency sweep\')', true, true)
				ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 24.609375GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:08')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #6\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 74192, 'I(2, 2, \'Tetrahedra\', 10492, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 1, 0, 110184, 'I(4, 2, \'Tetrahedra\', 10492, false, 2, \'1 Triangles\', 144, false, 2, \'2 Triangles\', 153, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 5, 0, 213016, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 64584, false, 3, \'Matrix bandwidth\', 20.7236, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional propagating and/or slowly decaying mode whose attenuation is   4.625e+00 and propagation constant is   6.313e+01\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional propagating and/or slowly decaying mode whose attenuation is   4.685e+00 and propagation constant is   6.232e+01\')', false, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 213016, 'I(2, 2, \'Excitations\', 4, false, 1, \'Disk\', \'8.3 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 37.109375GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:08')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #6\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 73692, 'I(2, 2, \'Tetrahedra\', 10492, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 1, 0, 108288, 'I(4, 2, \'Tetrahedra\', 10492, false, 2, \'1 Triangles\', 144, false, 2, \'2 Triangles\', 153, false, 1, \'Disk\', \'497 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 4, 0, 211652, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 64584, false, 3, \'Matrix bandwidth\', 20.7236, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 211652, 'I(2, 2, \'Excitations\', 4, false, 1, \'Disk\', \'8.3 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 35.15625GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:08')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #6\')', false, true)
					ProfileItem(' ', 0, 0, 0, 0, 0, 'I(1, 0, \'\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 72868, 'I(2, 2, \'Tetrahedra\', 10492, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 1, 0, 107404, 'I(4, 2, \'Tetrahedra\', 10492, false, 2, \'1 Triangles\', 144, false, 2, \'2 Triangles\', 153, false, 1, \'Disk\', \'496 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 4, 0, 210660, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 64584, false, 3, \'Matrix bandwidth\', 20.7236, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 210660, 'I(2, 2, \'Excitations\', 4, false, 1, \'Disk\', \'8.29 KB\')', true, false)
				$end 'ProfileGroup'
				$begin 'ProfileGroup'
					MajorVer=2023
					MinorVer=2
					Name='Frequency - 33.59375GHz'
					$begin 'StartInfo'
						I(0, 'uranium')
					$end 'StartInfo'
					$begin 'TotalInfo'
						I(0, 'Elapsed time : 00:00:08')
					$end 'TotalInfo'
					GroupOptions=0
					TaskDataOptions('CPU Time'=8, 'Real Time'=8)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Distributed Solve Group #6\')', false, true)
					ProfileItem('Simulation Setup ', 0, 0, 0, 0, 72340, 'I(2, 2, \'Tetrahedra\', 10492, false, 1, \'Disk\', \'0 Bytes\')', true, false)
					ProfileItem('Matrix Assembly', 2, 0, 1, 0, 108140, 'I(4, 2, \'Tetrahedra\', 10492, false, 2, \'1 Triangles\', 144, false, 2, \'2 Triangles\', 153, false, 1, \'Disk\', \'495 Bytes\')', true, false)
					ProfileItem('Matrix Solve', 5, 0, 4, 0, 210480, 'I(6, 1, \'Type\', \'DCS\', 2, \'Cores\', 1, false, 2, \'Matrix size\', 64584, false, 3, \'Matrix bandwidth\', 20.7236, \'%5.1f\', 0, \'s-matrix only solve\', 1, \'Disk\', \'1 Bytes\')', true, false)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 1 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Port 2 supports an additional mode that is part of degenerate group with mode 3.  Randomly bad results can occur when not including all modes in a degenerate group\')', false, true)
					ProfileItem('Field Recovery', 0, 0, 0, 0, 210480, 'I(2, 2, \'Excitations\', 4, false, 1, \'Disk\', \'8.3 KB\')', true, false)
				$end 'ProfileGroup'
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 22, Frequency: 24.609375GHz; S Matrix Error =   0.120%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 23, Frequency: 37.109375GHz; Zo Matrix Error =   0.028%; Secondary solver criterion is not converged\')', false, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'Basis Element # 24, Frequency: 35.15625GHz; Scattering matrix quantities converged\')', false, true)
				ProfileItem('Data Transfer', 0, 0, 0, 0, 69976, 'I(1, 0, \'Frequency Group #6; Interpolating frequency sweep\')', true, true)
				ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 0, \'The interpolating frequency sweep converged but had one or more non passive basis solutions.  Passivity cannot be enforced for the sweep.\')', false, true)
				ProfileFootnote('I(1, 0, \'Interpolating sweep converged but has at least one non-passive basis solution\')', 0)
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
			ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:00\', 1, \'Total Memory\', \'62.3 MB\')', false, true)
			ProfileItem('Initial Meshing', 0, 0, 0, 0, 0, 'I(2, 1, \'Elapsed Time\', \'00:00:02\', 1, \'Total Memory\', \'72.9 MB\')', false, true)
			ProfileItem('Adaptive Meshing', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:00:43\', 1, \'Average memory/process\', \'411 MB\', 1, \'Max memory/process\', \'411 MB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 4, false)', false, true)
			ProfileItem('Frequency Sweep', 0, 0, 0, 0, 0, 'I(5, 1, \'Elapsed Time\', \'00:01:10\', 1, \'Average memory/process\', \'206 MB\', 1, \'Max memory/process\', \'208 MB\', 2, \'Max number of processes/frequency\', 1, false, 2, \'Total number of cores\', 4, false)', false, true)
			ProfileFootnote('I(3, 2, \'Max solved tets\', 10492, false, 2, \'Max matrix size\', 64584, false, 1, \'Matrix bandwidth\', \'20.7\')', 0)
		$end 'ProfileGroup'
		ProfileFootnote('I(2, 1, \'Stop Time\', \'10/09/2023 17:20:27\', 1, \'Status\', \'Normal Completion\')', 0)
	$end 'ProfileGroup'
$end 'Profile'
