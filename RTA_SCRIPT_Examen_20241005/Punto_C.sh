#!/bin/bash

sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores

sudo useradd -m -s /bin/bash -c "Alumno p1c2_2024_A1" -G Alumnos p1c2_2024_A1
sudo useradd -m -s /bin/bash -c "Alumno p1c2_2024_A2" -G Alumnos p1c2_2024_A2
sudo useradd -m -s /bin/bash -c "Alumno p1c2_2024_A3" -G Alumnos p1c2_2024_A3
sudo useradd -m -s /bin/bash -c "Profesor p1c2_2024_P1" -G Profesores p1c2_2024_P1

chown p1c2_2024_A1:p1c2_2024_gAlumno /Examenes-UTN/alumno_1
chmod 750 /Examenes-UTN/alumno_1

chown p1c2_2024_A2:p1c2_2024_A2 /Examenes-UTN/alumno_2
chmod 700 /Examenes-UTN/alumno_2

chown p1c2_2024_A3:p1c2_2024_A3 /Examenes-UTN/alumno_3
chmod 700 /Examenes-UTN/alumno_3

chown p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/profesores
chmod 771 /Examenes-UTN/profesores

echo "Ejecutando whoami para p1c2_2024_A1" > /Examenes-UTN/alumno_1/validar.txt
su - p1c2_2024_A1 -c "whoami" >> /Examenes-UTN/alumno_1/validar.txt

echo "Ejecutando whoami para p1c2_2024_A2" > /Examenes-UTN/alumno_2/validar.txt
su - p1c2_2024_A2 -c "whoami" >> /Examenes-UTN/alumno_2/validar.txt

echo "Ejecutando whoami para p1c2_2024_A3" > /Examenes-UTN/alumno_3/validar.txt
su - p1c2_2024_A3 -c "whoami" >> /Examenes-UTN/alumno_3/validar.txt

echo "Ejecutando whoami para p1c2_2024_P1" > /Examenes-UTN/profesores/validar.txt
su - p1c2_2024_P1 -c "whoami" >> /Examenes-UTN/profesores/validar.txt

echo "Script ejecutado con exito."
