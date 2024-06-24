CREATE TABLE Usuario(
			email Text NOT NULL,
			contrasena Text NOT NULL,
			id Integer NOT NULL,
	
	roles Integer NOT NULL,
	CONSTRAINT roles_fk FOREIGN KEY (roles)
	REFERENCES Roles (id),
	
	CONSTRAINT usuario_pkey PRIMARY KEY (id)
);

CREATE TABLE DatosPersonales(
			nombres Text NOT NULL,
			apellidos Text NOT NULL,
			dni Text NOT NULL,
			direccion Text NOT NULL,
			telefono Text NOT NULL,
			id Integer NOT NULL,
	
	usuario Integer NOT NULL,
	CONSTRAINT usuario_fk FOREIGN KEY (usuario)
	REFERENCES Usuario (id),
	
	CONSTRAINT datospersonales_pkey PRIMARY KEY (id)
);

CREATE TABLE HistorialClinico(
			fecha_cita Date NOT NULL,
			datos_generales_paciente Text NOT NULL,
			datos_exploracion Text NOT NULL,
			diagnostico Text NOT NULL,
			pronostico Text NOT NULL,
			tratamiento Text NOT NULL,
			id Integer NOT NULL,
	
	usuario Integer NOT NULL,
	CONSTRAINT usuario_fk FOREIGN KEY (usuario)
	REFERENCES Usuario (id),
	
	CONSTRAINT historialclinico_pkey PRIMARY KEY (id)
);

CREATE TABLE AnalisisLaboratorio(
			sangre Text NOT NULL,
			orina Text NOT NULL,
			heces Text NOT NULL,
			id Integer NOT NULL,
	
	historialclinico Integer NOT NULL,
	CONSTRAINT historialclinico_fk FOREIGN KEY (historialclinico)
	REFERENCES HistorialClinico (id),
	
	CONSTRAINT analisislaboratorio_pkey PRIMARY KEY (id)
);

CREATE TABLE Roles(
			name Text NOT NULL,
			id Integer NOT NULL,
	
	
	CONSTRAINT roles_pkey PRIMARY KEY (id)
);

