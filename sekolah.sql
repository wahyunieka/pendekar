-- ****************** SqlDBM: MySQL ******************;
-- ***************************************************;


-- ************************************** `students`

CREATE TABLE `students`
(
 `nis`            bigint NOT NULL ,
 `nama_panggilan` varchar(45) NOT NULL ,
 `nama_depan`     varchar(45) NOT NULL ,
 `nama_tengah`    varchar(45) NOT NULL ,
 `nama_belakang`  varchar(45) NOT NULL ,
 `jenis_kelamin`  int NOT NULL ,
 `tempat`         varchar(45) NOT NULL ,
 `tanggal_lahir`  date NOT NULL ,
 `agama`          varchar(45) NOT NULL ,
 `alamat`         varchar(45) NOT NULL ,
 `hobi`           varchar(45) NOT NULL ,
 `Foto`           varchar(45) NOT NULL ,
 `create_at`      datetime NOT NULL ,
PRIMARY KEY (`nis`)
);






-- ************************************** `food_menu`

CREATE TABLE `food_menu`
(
 `fid`           bigint NOT NULL ,
 `jenis_makanan` varchar(45) NOT NULL ,
 `jenis_minuman` varchar(45) NOT NULL ,
 `jenis_buah`    varchar(45) NOT NULL ,
 `create_at`     datetime NOT NULL ,
PRIMARY KEY (`fid`)
);






-- ************************************** `extracuricullar`

CREATE TABLE `extracuricullar`
(
 `id`                    bigint NOT NULL ,
 `jenis_extracuricullar` varchar(45) NOT NULL ,
 `create_at`             varchar(45) NOT NULL ,
PRIMARY KEY (`id`)
);






-- ************************************** `events`

CREATE TABLE `events`
(
 `id_events` bigint NOT NULL ,
 `holiday`   datetime NOT NULL ,
 `testing`   datetime NOT NULL ,
 `fieldtrip` date NOT NULL ,
 `meeting`   datetime NOT NULL ,
 `create_at` datetime NOT NULL ,
PRIMARY KEY (`id_events`)
);






-- ************************************** `class`

CREATE TABLE `class`
(
 `id_class`         bigint NOT NULL ,
 `nama_ruang_kelas` varchar(45) NOT NULL ,
 `create_at`        datetime NOT NULL ,
PRIMARY KEY (`id_class`)
);






-- ************************************** `schedule`

CREATE TABLE `schedule`
(
 `sid`       bigint NOT NULL ,
 `id`        bigint NOT NULL ,
 `fid`       bigint NOT NULL ,
 `id_events` bigint NOT NULL ,
 `jam`       time NOT NULL ,
 `hari`      varchar(45) NOT NULL ,
 `tanggal`   date NOT NULL ,
 `tahun`     date NOT NULL ,
 `create_at` datetime NOT NULL ,
PRIMARY KEY (`sid`, `id`, `fid`, `id_events`),
KEY `fkIdx_1665` (`id`),
CONSTRAINT `FK_1665` FOREIGN KEY `fkIdx_1665` (`id`) REFERENCES `extracuricullar` (`id`),
KEY `fkIdx_1668` (`fid`),
CONSTRAINT `FK_1668` FOREIGN KEY `fkIdx_1668` (`fid`) REFERENCES `food_menu` (`fid`),
KEY `fkIdx_1671` (`id_events`),
CONSTRAINT `FK_1671` FOREIGN KEY `fkIdx_1671` (`id_events`) REFERENCES `events` (`id_events`)
);






-- ************************************** `parents`

CREATE TABLE `parents`
(
 `id_parents` bigint NOT NULL ,
 `nama`       varchar(45) NOT NULL ,
 `alamat`     varchar(45) NOT NULL ,
 `agama`      varchar(45) NOT NULL ,
 `phone`      varchar(45) NOT NULL ,
 `nis`        bigint NOT NULL ,
 `create_at`  datetime NOT NULL ,
PRIMARY KEY (`id_parents`),
KEY `fkIdx_1605` (`nis`),
CONSTRAINT `FK_1605` FOREIGN KEY `fkIdx_1605` (`nis`) REFERENCES `students` (`nis`)
);






-- ************************************** `contact`

CREATE TABLE `contact`
(
 `cid`              bigint NOT NULL ,
 `id_parents`       bigint NOT NULL ,
 `telephone`        varchar(45) NOT NULL ,
 `no_fax`           varchar(45) NOT NULL ,
 `no_email`         varchar(45) NOT NULL ,
 `media_center`     varchar(45) NOT NULL ,
 `staff_direcctory` varchar(45) NOT NULL ,
 `facebook`         varchar(45) NOT NULL ,
 `create_at`        datetime NOT NULL ,
PRIMARY KEY (`cid`, `id_parents`),
KEY `fkIdx_1636` (`id_parents`),
CONSTRAINT `FK_1636` FOREIGN KEY `fkIdx_1636` (`id_parents`) REFERENCES `parents` (`id_parents`)
);






-- ************************************** `school`

CREATE TABLE `school`
(
 `id_sekolah`              bigint NOT NULL ,
 `id_parents`              bigint NOT NULL ,
 `cid`                     bigint NOT NULL ,
 `name_school`             varchar(45) NOT NULL ,
 `vissi`                   varchar(45) NOT NULL ,
 `missi`                   varchar(45) NOT NULL ,
 `principals_message`      varchar(45) NOT NULL ,
 `news_letter`             varchar(45) NOT NULL ,
 `new_annoucement`         varchar(45) NOT NULL ,
 `upcoming_events`         varchar(45) NOT NULL ,
 `school_improvment_plan`  varchar(45) NOT NULL ,
 `parent_student_handbook` varchar(45) NOT NULL ,
 `gallery`                 char NOT NULL ,
 `create_at`               datetime NOT NULL ,
PRIMARY KEY (`id_sekolah`, `id_parents`, `cid`),
KEY `fkIdx_1639` (`cid`, `id_parents`),
CONSTRAINT `FK_1639` FOREIGN KEY `fkIdx_1639` (`cid`, `id_parents`) REFERENCES `contact` (`cid`, `id_parents`)
);






-- ************************************** `teacher`

CREATE TABLE `teacher`
(
 `peg_id`         bigint NOT NULL ,
 `id_parents`     bigint NOT NULL ,
 `cid`            bigint NOT NULL ,
 `id_sekolah`     bigint NOT NULL ,
 `npwp`           varchar(45) NOT NULL ,
 `nama_panggilan` varchar(45) NOT NULL ,
 `nama_depan`     varchar(45) NOT NULL ,
 `nama_tengah`    varchar(45) NOT NULL ,
 `nama_belakang`  varchar(45) NOT NULL ,
 `agama`          varchar(45) NOT NULL ,
 `alamat`         varchar(45) NOT NULL ,
 `telephone`      varchar(45) NOT NULL ,
 `email`          varchar(45) NOT NULL ,
 `create_at`      datetime NOT NULL ,
PRIMARY KEY (`peg_id`, `id_parents`, `cid`, `id_sekolah`),
KEY `fkIdx_1643` (`id_sekolah`, `id_parents`, `cid`),
CONSTRAINT `FK_1643` FOREIGN KEY `fkIdx_1643` (`id_sekolah`, `id_parents`, `cid`) REFERENCES `school` (`id_sekolah`, `id_parents`, `cid`)
);






-- ************************************** `mapel`

CREATE TABLE `mapel`
(
 `mid`        datetime NOT NULL ,
 `nis`        bigint NOT NULL ,
 `cid`        bigint NOT NULL ,
 `peg_id`     bigint NOT NULL ,
 `id_sekolah` bigint NOT NULL ,
 `id_parents` bigint NOT NULL ,
 `sid`        bigint NOT NULL ,
 `id`         bigint NOT NULL ,
 `fid`        bigint NOT NULL ,
 `id_events`  bigint NOT NULL ,
 `id_class`   bigint NOT NULL ,
 `nama_mapel` varchar(45) NOT NULL ,
 `create_at`  varchar(45) NOT NULL ,
PRIMARY KEY (`mid`, `nis`, `cid`, `peg_id`, `id_sekolah`, `sid`, `id`, `fid`, `id_events`, `id_class`, `id_parents`),
KEY `fkIdx_1611` (`nis`),
CONSTRAINT `FK_1611` FOREIGN KEY `fkIdx_1611` (`nis`) REFERENCES `students` (`nis`),
KEY `fkIdx_1617` (`peg_id`, `id_parents`, `cid`, `id_sekolah`),
CONSTRAINT `FK_1617` FOREIGN KEY `fkIdx_1617` (`peg_id`, `id_parents`, `cid`, `id_sekolah`) REFERENCES `teacher` (`peg_id`, `id_parents`, `cid`, `id_sekolah`),
KEY `fkIdx_1674` (`sid`, `id`, `fid`, `id_events`),
CONSTRAINT `FK_1674` FOREIGN KEY `fkIdx_1674` (`sid`, `id`, `fid`, `id_events`) REFERENCES `schedule` (`sid`, `id`, `fid`, `id_events`),
KEY `fkIdx_1681` (`id_class`),
CONSTRAINT `FK_1681` FOREIGN KEY `fkIdx_1681` (`id_class`) REFERENCES `class` (`id_class`)
);





