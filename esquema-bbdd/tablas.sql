-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apoderado`
--

CREATE TABLE `apoderado` (
  `apod_ID` int(11) NOT NULL,
  `usr_ID` int(11) NOT NULL,
  `apod_Tlfno` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `Asig_ID` int(11) NOT NULL,
  `Asig_Nmbr` varchar(50) NOT NULL,
  `Asig_Desc` varchar(500) NOT NULL,
  `Asig_Peso` int(11) NOT NULL,
  `Asig_Hab` bit(64) NOT NULL,
  `Asig_Hrs` int(11) NOT NULL,
  `Asig_Reg` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asistencia`
--

CREATE TABLE `asistencia` (
  `Asit_Fech` date NOT NULL,
  `Estd_ID` int(11) NOT NULL,
  `Prgm_ID` int(11) NOT NULL,
  `Asit_Est` varchar(25) NOT NULL,
  `Asit_Obs` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion`
--

CREATE TABLE `calificacion` (
  `Estd_ID` int(11) NOT NULL,
  `Tarea_ID` int(11) NOT NULL,
  `Cal_Nt` float NOT NULL,
  `Cal_Est` varchar(25) NOT NULL,
  `Cal_Obs` varchar(250) DEFAULT NULL,
  `Cal_Reg` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunicado`
--

CREATE TABLE `comunicado` (
  `Cmdo_ID` int(11) NOT NULL,
  `Sec_ID` int(11) NOT NULL,
  `Cmdo_Ttl` varchar(100) NOT NULL,
  `Cmdo_Msg` varchar(500) NOT NULL,
  `Cmdo_Reg` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `Curso_ID` int(11) NOT NULL,
  `Asig_ID` int(11) NOT NULL,
  `Sec_ID` int(11) NOT NULL,
  `Prd_ID` int(11) NOT NULL,
  `Dct_ID` int(11) DEFAULT NULL,
  `Curso_Reg` date NOT NULL,
  `Curso_Ini` date NOT NULL,
  `Curso_Fin` date NOT NULL,
  `Curso_Hab` bit(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `dpto_ID` int(11) NOT NULL,
  `dpto_Nmbr` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `director`
--

CREATE TABLE `director` (
  `dir_ID` int(11) NOT NULL,
  `usr_ID` int(11) NOT NULL,
  `inst_ID` int(11) NOT NULL,
  `dir_Tlfn` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distrito`
--

CREATE TABLE `distrito` (
  `dtto_ID` int(11) NOT NULL,
  `dtto_Nmb` varchar(25) NOT NULL,
  `prov_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `Dct_ID` int(11) NOT NULL,
  `Usr_ID` int(11) NOT NULL,
  `Inst_ID` int(11) NOT NULL,
  `Dct_Tlfn` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento_usuario`
--

CREATE TABLE `documento_usuario` (
  `docUsr_ID` int(11) NOT NULL,
  `doct_Tp` int(11) NOT NULL,
  `usr_ID` int(11) NOT NULL,
  `docUsr_Vlr` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `Estd_ID` int(11) NOT NULL,
  `Usr_ID` int(11) NOT NULL,
  `Apod_ID` int(11) DEFAULT NULL,
  `Inst_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `Evnt_ID` int(11) NOT NULL,
  `Prd_ID` int(11) NOT NULL,
  `Evnt_Ttl` varchar(50) NOT NULL,
  `Evnt_Msg` varchar(50) NOT NULL,
  `Evnt_Est` varchar(50) NOT NULL,
  `Evnt_Reg` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE `grado` (
  `Grd_ID` int(11) NOT NULL,
  `Prd_ID` int(11) NOT NULL,
  `Grd_Nmbr` varchar(25) NOT NULL,
  `Grd_Reg` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_dct`
--

CREATE TABLE `historial_dct` (
  `Dct_ID` int(11) NOT NULL,
  `Prd_ID` int(11) NOT NULL,
  `HtDt_Reg` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_est`
--

CREATE TABLE `historial_est` (
  `HtDt_Reg` int(11) NOT NULL,
  `Estd_ID` int(11) NOT NULL,
  `Prd_ID` int(11) NOT NULL,
  `Sec_ID` int(11) NOT NULL,
  `HtSd_Reg` date NOT NULL,
  `HtSd_Fin` date DEFAULT NULL,
  `HtSd_Prom` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `institucion`
--

CREATE TABLE `institucion` (
  `inst_ID` int(11) NOT NULL,
  `inst_Nmb` varchar(50) NOT NULL,
  `dtto_ID` int(11) NOT NULL,
  `inst_Tp` varchar(15) NOT NULL,
  `inst_CodMd` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificacion`
--

CREATE TABLE `notificacion` (
  `noti_ID` int(11) NOT NULL,
  `noti_Dscp` varchar(150) NOT NULL,
  `noti_TipoID` int(11) NOT NULL,
  `noti_Reg` date NOT NULL,
  `noti_Tlf` varchar(15) DEFAULT NULL,
  `noti_Org` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notification_usr`
--

CREATE TABLE `notification_usr` (
  `usr_ID` int(11) NOT NULL,
  `noti_ID` int(11) NOT NULL,
  `notUsr_Est` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noti_tipo`
--

CREATE TABLE `noti_tipo` (
  `noti_TipoID` int(11) NOT NULL,
  `noti_Evento` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo`
--

CREATE TABLE `periodo` (
  `Prd_ID` int(11) NOT NULL,
  `Inst_ID` int(11) NOT NULL,
  `Prd_Ini` date NOT NULL,
  `Prd_Fn` date NOT NULL,
  `Prd_Nmbr` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programacion`
--

CREATE TABLE `programacion` (
  `Prgm_ID` int(11) NOT NULL,
  `Curso_ID` int(11) NOT NULL,
  `Prgm_Dia` varchar(15) NOT NULL,
  `Prgm_Ini` time NOT NULL,
  `Prgm_Fin` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `prov_ID` int(11) NOT NULL,
  `prov_Nmbr` varchar(25) NOT NULL,
  `dpto_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_apod`
--

CREATE TABLE `registro_apod` (
  `apod_ID` int(11) NOT NULL,
  `inst_ID` int(11) NOT NULL,
  `rgApd_Reg` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_curso`
--

CREATE TABLE `registro_curso` (
  `HtSd_ID` int(11) NOT NULL,
  `Curso_ID` int(11) NOT NULL,
  `RegCr_Nt` float DEFAULT NULL,
  `RegCr_Est` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE `seccion` (
  `Sec_ID` int(11) NOT NULL,
  `Grd_ID` int(11) NOT NULL,
  `Dct_ID` int(11) DEFAULT NULL,
  `Sec_Cpcd` int(11) NOT NULL,
  `Sec_Nmbr` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarea`
--

CREATE TABLE `tarea` (
  `Tarea_ID` int(11) NOT NULL,
  `Curso_ID` int(11) NOT NULL,
  `Tarea_Ttl` varchar(50) NOT NULL,
  `Tarea_Desc` varchar(500) NOT NULL,
  `Tarea_Fin` date NOT NULL,
  `Tarea_Reg` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tema`
--

CREATE TABLE `tema` (
  `Tema_ID` int(11) NOT NULL,
  `Curso_ID` int(11) NOT NULL,
  `Tema_Ttl` varchar(100) NOT NULL,
  `Tema_Desc` varchar(500) NOT NULL,
  `Tema_Ini` date NOT NULL,
  `Tema_Fin` date NOT NULL,
  `Tema_Reg` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `doc_Tp` int(11) NOT NULL,
  `doc_Nmbr` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usr_ID` int(11) NOT NULL,
  `usr_PNmbr` varchar(25) NOT NULL,
  `usr_SNmbr` varchar(25) DEFAULT NULL,
  `usr_ApPt` varchar(25) NOT NULL,
  `usr_ApMt` varchar(25) NOT NULL,
  `usr_Email` varchar(50) NOT NULL,
  `usr_Hab` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `apoderado`
--
ALTER TABLE `apoderado`
  ADD PRIMARY KEY (`apod_ID`),
  ADD KEY `usr_ID` (`usr_ID`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`dpto_ID`);

--
-- Indices de la tabla `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`dir_ID`),
  ADD KEY `usr_ID` (`usr_ID`),
  ADD KEY `inst_ID` (`inst_ID`);

--
-- Indices de la tabla `distrito`
--
ALTER TABLE `distrito`
  ADD PRIMARY KEY (`dtto_ID`),
  ADD KEY `prov_ID` (`prov_ID`);

--
-- Indices de la tabla `documento_usuario`
--
ALTER TABLE `documento_usuario`
  ADD PRIMARY KEY (`docUsr_ID`),
  ADD KEY `doct_Tp` (`doct_Tp`),
  ADD KEY `usr_ID` (`usr_ID`);

--
-- Indices de la tabla `institucion`
--
ALTER TABLE `institucion`
  ADD PRIMARY KEY (`inst_ID`),
  ADD KEY `dtto_ID` (`dtto_ID`);

--
-- Indices de la tabla `notificacion`
--
ALTER TABLE `notificacion`
  ADD PRIMARY KEY (`noti_ID`),
  ADD KEY `noti_TipoID` (`noti_TipoID`);

--
-- Indices de la tabla `notification_usr`
--
ALTER TABLE `notification_usr`
  ADD PRIMARY KEY (`usr_ID`,`noti_ID`),
  ADD KEY `noti_ID` (`noti_ID`);

--
-- Indices de la tabla `noti_tipo`
--
ALTER TABLE `noti_tipo`
  ADD PRIMARY KEY (`noti_TipoID`);

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`prov_ID`),
  ADD KEY `dpto_ID` (`dpto_ID`);

--
-- Indices de la tabla `registro_apod`
--
ALTER TABLE `registro_apod`
  ADD PRIMARY KEY (`apod_ID`,`inst_ID`),
  ADD KEY `inst_ID` (`inst_ID`);

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`doc_Tp`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usr_ID`),
  ADD UNIQUE KEY `usr_Email` (`usr_Email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `apoderado`
--
ALTER TABLE `apoderado`
  MODIFY `apod_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `dpto_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `director`
--
ALTER TABLE `director`
  MODIFY `dir_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `distrito`
--
ALTER TABLE `distrito`
  MODIFY `dtto_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `documento_usuario`
--
ALTER TABLE `documento_usuario`
  MODIFY `docUsr_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `institucion`
--
ALTER TABLE `institucion`
  MODIFY `inst_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notificacion`
--
ALTER TABLE `notificacion`
  MODIFY `noti_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `noti_tipo`
--
ALTER TABLE `noti_tipo`
  MODIFY `noti_TipoID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `provincia`
--
ALTER TABLE `provincia`
  MODIFY `prov_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  MODIFY `doc_Tp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usr_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `apoderado`
--
ALTER TABLE `apoderado`
  ADD CONSTRAINT `apoderado_ibfk_1` FOREIGN KEY (`usr_ID`) REFERENCES `usuario` (`usr_ID`);

--
-- Filtros para la tabla `director`
--
ALTER TABLE `director`
  ADD CONSTRAINT `director_ibfk_1` FOREIGN KEY (`usr_ID`) REFERENCES `usuario` (`usr_ID`),
  ADD CONSTRAINT `director_ibfk_2` FOREIGN KEY (`inst_ID`) REFERENCES `institucion` (`inst_ID`);

--
-- Filtros para la tabla `distrito`
--
ALTER TABLE `distrito`
  ADD CONSTRAINT `distrito_ibfk_1` FOREIGN KEY (`prov_ID`) REFERENCES `provincia` (`prov_ID`);

--
-- Filtros para la tabla `documento_usuario`
--
ALTER TABLE `documento_usuario`
  ADD CONSTRAINT `documento_usuario_ibfk_1` FOREIGN KEY (`doct_Tp`) REFERENCES `tipo_documento` (`doc_Tp`),
  ADD CONSTRAINT `documento_usuario_ibfk_2` FOREIGN KEY (`usr_ID`) REFERENCES `usuario` (`usr_ID`);

--
-- Filtros para la tabla `institucion`
--
ALTER TABLE `institucion`
  ADD CONSTRAINT `institucion_ibfk_1` FOREIGN KEY (`dtto_ID`) REFERENCES `distrito` (`dtto_ID`);

--
-- Filtros para la tabla `notificacion`
--
ALTER TABLE `notificacion`
  ADD CONSTRAINT `notificacion_ibfk_1` FOREIGN KEY (`noti_TipoID`) REFERENCES `noti_tipo` (`noti_TipoID`);

--
-- Filtros para la tabla `notification_usr`
--
ALTER TABLE `notification_usr`
  ADD CONSTRAINT `notification_usr_ibfk_1` FOREIGN KEY (`usr_ID`) REFERENCES `usuario` (`usr_ID`),
  ADD CONSTRAINT `notification_usr_ibfk_2` FOREIGN KEY (`noti_ID`) REFERENCES `notificacion` (`noti_ID`);

--
-- Filtros para la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD CONSTRAINT `provincia_ibfk_1` FOREIGN KEY (`dpto_ID`) REFERENCES `departamento` (`dpto_ID`);

--
-- Filtros para la tabla `registro_apod`
--
ALTER TABLE `registro_apod`
  ADD CONSTRAINT `registro_apod_ibfk_1` FOREIGN KEY (`apod_ID`) REFERENCES `apoderado` (`apod_ID`),
  ADD CONSTRAINT `registro_apod_ibfk_2` FOREIGN KEY (`inst_ID`) REFERENCES `institucion` (`inst_ID`);
COMMIT;
