-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 03, 2022 lúc 08:17 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `usermanager`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `datetime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `image`
--

INSERT INTO `image` (`id`, `username`, `url`, `datetime`) VALUES
(1, '1', 'l6ssso4gyjb2vyxf626qyhsgh48x08tp5hfmqwmmoibvwpxe48ya3ohklpm7upuiyyutnb3qyg9a41i5.png', 'Fri Jul 01 06:23:08 ICT 2022'),
(2, 'Lvt', 'yc1w77zgwrc98zcy0wycm2lvqivf7t8z4n6tkvfifgbr91mywo9zlb5in4yopy6zigyzpvyl8vn7wmpg.png', 'Thu Jun 30 17:53:59 ICT 2022'),
(3, 'Lvt', '26orpvo2djf37kp8st8v4ra2earsrrijl6avk7k0ik68c9qsq3tl0guknxja4ddx04mheets8bml9cr1.png', 'Thu Jun 30 17:54:31 ICT 2022'),
(4, '1', 'yanv6elfqx6yix5k0ovtkgwpf9zvlg9wv4nnaueutjcnxsizjg5ljbjqw79ptsh0c2hd192aylc3g4gd.png', 'Thu Jun 30 19:09:16 ICT 2022'),
(5, '3', 'rfp9i974nmaeyqk27lzqdfifpjf0h9btf8buw0evgu2llsymzvlhlz4kfokrcn7qldcwt1rx8fk5lu2u.png', 'Thu Jun 30 19:19:49 ICT 2022'),
(6, '3', 'l6przk2pxotjy0dmgcydu1ozl7ux3u01levphlvy44vu45ahjqsthv4n3d6fqqgt0lzm4i1avhhvi7m8.png', 'Thu Jun 30 19:22:05 ICT 2022'),
(7, '3', '18ftqm49bwfg0wbdfkq87c7dl8xxnuanz6w9xordobub1bwolzp9sq7j7b1zlwwpaumjh63esa77n87r.png', 'Thu Jun 30 19:22:40 ICT 2022'),
(8, '3', 'wx9w2wkbnjik3jf44s7aq2dtauoe9wo6s22vkk4ge2fd2ssdnvxiqtozvnlsfrg6or3o5r5idsqu6lh9.png', 'Thu Jun 30 19:22:54 ICT 2022'),
(9, '3', 'jd60zd1q7fytvj2osnifxnj27301psptxixqmc8lcjmd7cbpl19qfxl65603jl1innbsy5t9ua23pzur.png', 'Thu Jun 30 19:22:56 ICT 2022'),
(10, '3', 'rovn5us4nrlu7z4j938jeouyf1amdsgvt790ndeo2b8tuik7errqkdbnkpwnnqt3o566sou46knsdw81.png', 'Thu Jun 30 19:26:57 ICT 2022'),
(11, 'HaiZuka', 'kcmsg6rg2z6zrygzkl596yswzq43n15yucwwm375h37e7hii782mjcyyedyi2us36eef10a9qlnlhl43.png', 'Thu Jun 30 19:46:22 ICT 2022'),
(12, 'HaiZuka', 'dun6xc601agdcyoge3vtaqxq8gq2s83l0uohczc1ipnadmk6nh8dap67xjm8lmn5mk5826ptrvr0mom7.png', 'Thu Jun 30 19:46:58 ICT 2022'),
(13, 'HaiZuka', 'ojscsmcovb4kkhojmwnmgpwuoqa17xhrv890wsqc0noomvd2o1525im1kr5secz170p1ikpfyf2qu9dt.png', 'Thu Jun 30 19:47:07 ICT 2022'),
(14, 'HaiZuka', '293rn28aqjt793591ubxfuvdozcq7z3krf5qn2wuh38ikzlx9rdqgwx12wekk5v2r5aekbv8rxpq5w00.png', 'Thu Jun 30 19:47:17 ICT 2022'),
(15, 'HaiZuka', 'd075d3xb45744k5tt35wvsahm8228lcpubkve8dnzfp7kzq8g9z5zuwyns9fbp2teqt7ynxbru0dmbdx.png', 'Thu Jun 30 19:52:53 ICT 2022'),
(16, 'admin', '935cfchmyb3som6crtj9jzfpr880i5ls919q1yffb9j7d5nrlpg2717xm5bx384e2yvp21xc190q57yh.png', 'Fri Jul 01 06:16:58 ICT 2022'),
(17, 'HaiZuka', '87uo4bcmn8hpk3zjlt9s3uj8m3agf8rda0lysdfzddubps3fjciywsybhyv5uwqekjqhp3i1tvc1np1l.png', 'Fri Jul 01 01:07:14 ICT 2022'),
(18, 'admin', '2gqgkdoewsxb1rg8237718lapoarudlptnvrdgsebw69jipr1z5wmeg0h8sfedp7dwc0ghs0amv89k4v.png', 'Fri Jul 01 06:05:59 ICT 2022'),
(19, 'admin', '02s54javdhb5c77apzo114sqjxgmpis6n0qg1far6edlt8jb6rxo9guhggtmz4g5fo427vwrjhfhmzii.png', 'Fri Jul 01 06:19:13 ICT 2022'),
(20, 'admin', 'n82cspvoh0hizlt1we8qtgtx3y8mk65bkyua5ov3ea54w01guejzi82uxdvl8xvskvq9lxbvgzoqpp99.png', 'Fri Jul 01 06:15:58 ICT 2022'),
(21, 'admin', 'meo2h213m9xpzj90e1nb52mvstxljng23c6h33xj6n0ktd7ws6t9rozvbf6fg4ph7bp2vw8omzssxqea.png', 'Fri Jul 01 01:34:06 ICT 2022'),
(22, 'admin', 'jksk13v7wnnqrfd6bjye3taj3bt5tlkwn4zafej35ccy90vopoxpgixx8b3tp42tzkjg8ovakdvm3qnj.png', 'Fri Jul 01 06:16:40 ICT 2022'),
(23, '1', 'p25b9sk26xpps21awnjuto6wli767k2qb5hx27yr86jx3e7f87o56dq0vbay3zuojao71n13iz0hg91u.png', 'Fri Jul 01 06:23:26 ICT 2022'),
(24, 'a', 'xe9297ievkziv92do1w6qgjfdvq82iwhsgpm9mtcvi2pbgqvg50ku1gvxhxp9mcub85qdf6bz8q89lqz.png', 'Fri Jul 01 07:17:48 ICT 2022'),
(25, 'admin', 'dlsdlve67nzbf2ns529q89iy8nc9epicd2z84onic6u3rn8f68bkclicmdep7zj9mn2lik5xuhpv1l37.png', 'Fri Jul 01 08:21:51 ICT 2022'),
(26, 'Z', 'mya375db7crepzjmpsggojpar51r072m9kheforextkuhfzd51x019vy7we6heepjzmgv7mllzeoedvf.png', 'Fri Jul 01 17:37:00 ICT 2022'),
(27, 'admin', '9fpebvjvlc6qfv6jilnqjtv53171nyufujrq6zas5aqghc0cm3a8611mdlldbwmt1yv8kt6fc1q1run3.png', 'Sun Jul 03 02:48:18 ICT 2022'),
(28, 'admin', 'uwnzukrzrocu7q9q0obdo4uhlhgeyumi7ehrzg2ax3n5o5071vlyyfisfnjfs3d7ger92uj1r3zw2odu.png', 'Fri Jul 01 08:26:41 ICT 2022'),
(29, '1', 'hgrwar990szjormgygwdco6iaa1mmu4gqfpvwy8uupt8kf012gwjtv4qkgj07ml23zlg21wxz38446ir.png', 'Fri Jul 01 19:36:04 ICT 2022'),
(30, '1', '1e0el40d1ih75r57eaywrurrsohdnut4ouv9k7hp5arp7ais9q660u6768titvxinw9e780jt8znt58g.png', 'Fri Jul 01 19:36:22 ICT 2022'),
(31, '6', 'dob111ckf630bd1ux908o0vhr8gglcpvp0hkvrltubaqwoj61anhz0071mzky59ip48k9f8a9zd1s8gx.png', 'Mon Jul 04 01:09:08 ICT 2022'),
(32, '1', 'oae2v8m4hghcdy44uyf93phousfuptkkxymfw6iu95bbo12yzhm8l4y7yejvxwsq81t2ts763575txsy.png', 'Fri Jul 01 19:46:33 ICT 2022'),
(33, 'admin', '4px2mdw8qlt9vddwezyfkclg2brvlznwqlgwf59mo0oas3grqg0ovw6aecmfnmtwv69jpyua5uditp1y.png', 'Fri Jul 01 20:24:45 ICT 2022'),
(34, 'admin', 'qwyfwki489901fa30y1mmppixhc42m78l3somnargthv3qaez6t61xip9tbqw5pdumxsdsg7bcyz0csi.png', 'Fri Jul 01 20:26:31 ICT 2022'),
(35, 'admin', 'lqtnawancbqo4ym0k0z3osts0ecke1xlaxyhhvy4oh75fvpgxtk0gpgblwb9t5upyol82582u82hhux0.png', 'Fri Jul 01 20:26:38 ICT 2022'),
(36, 'admin', 'gztieska9jbig6cchso0h8em9x58su3cewsdfxbxwai4tx2ytyelnc73bk279926vlu8uwevffzczv7d.png', 'Fri Jul 01 20:26:44 ICT 2022'),
(37, 'admin', '5x1po4cudile8wjqdufwxux75ekla9hxe4uzn7fr9ltyc4ph9b1tgm4bpy134earv1uox6gpv54yvr9t.png', 'Sun Jul 03 03:27:22 ICT 2022'),
(38, 'admin', '87zyk2ox4cng4yadr0yt7q7tr3hg5lautp5z5jcg152bnj0k3nrnxomhcwitljahbgteljvzmgnnocch.png', 'Fri Jul 01 20:28:47 ICT 2022'),
(39, 'admin', '6ogkxxrwt1iye7s0ljo6lvpza25k9v14dh3vmoysoxjebumaxgg5obqnq782ntmh1k0gx1mrb4f47icq.png', 'Sun Jul 03 03:28:23 ICT 2022'),
(40, '2', 'yoa62s4i68kn1lzm2oa9o5fygsknu763lfj5xsdvd3qs6kr70prqj0rrft2bx31b2dhum8oknzx5vhpj.png', 'Sun Jul 03 03:32:25 ICT 2022'),
(41, '2', 'osoyptzmoh6h46ujo91emizxdh5om35zq3y7gixr54gt4laavsosqn55ad69qm1fx8vjkt1nbjjhzj4c.png', 'Sun Jul 03 03:32:45 ICT 2022'),
(42, '2', '0urvdft1c2yset7wjqcwlxc5p7wswy6n5exbxeaj3846m83frkp22ritf2gcc07sb5bfp8qo365d944t.png', 'Sun Jul 03 03:34:46 ICT 2022'),
(43, '2', '4z2d0mw97wm24epkb6tmw6tdqwzcc4g42qebg04t5x80651k8gmujy9iaz53zojzv2b91tl1cxr8gson.png', 'Sun Jul 03 03:35:29 ICT 2022'),
(44, '2', '6u6smornu3bkz1pydw6qkm1iaw4280eqwbln41gu5hdhzmpawydhfuuhm5r99dge6oz8fwquau28b726.png', 'Sun Jul 03 03:36:18 ICT 2022'),
(45, '2', 'eznh6lh1tss72tdo6i3h0n81kqowc6o978jk9m4la2s447j3b2mca8nq903vpwc2w9bl0ehi2a47chrd.png', 'Sun Jul 03 03:36:40 ICT 2022'),
(46, '2', 'vj7ix4qdel5tnkrz7vcp1uys0rwu74jxicq0ypgctubqiy72z95f6duwss2sgr6urdf7ze2nf5wvqe2m.png', 'Sun Jul 03 03:36:49 ICT 2022'),
(47, 'admin', 'kk3470fvb87efigmcfwoo3eirv2igku569wlpcu6tt94tzzfajz57v284wrft1hzgzr48eaflh1vm5u6.png', 'Sun Jul 03 03:46:22 ICT 2022'),
(48, 'admin', 'h0hw14dpw2q8z2chahjh7mruvahotb5flrd91h288ca4dg0tze3o9b3hif9cub1lq1qrbkt2cw6q9pwy.png', 'Sun Jul 03 03:46:29 ICT 2022'),
(49, 'admin', '7eioml507tp4yp1wf3jz58w0gr6855yh947sqwxb7iqa77tmed1jax209v0exegn7jf6gye8mmr4w15w.png', 'Sun Jul 03 03:46:36 ICT 2022'),
(50, 'admin', 'psrzcw9ml9blbgbei9xoieexh4xszogpdy9388phual1xtsyezo2i97xdt9eu2f0vay390j4j6df5zj8.png', 'Sun Jul 03 03:46:43 ICT 2022'),
(51, 'admin', '5z5gqnqp5ve9zciwnk79cklko6l15wn7to4zdqebn9ej48ufhnet35bwewc2bmk45j16ms8cwm06omu9.png', 'Sun Jul 03 03:46:49 ICT 2022'),
(52, 'admin', '5syn51viq2b6a39aksmm03bu9opx6s3s2q8ky278vz8zule7la7s0wdjv05dxkq19nawyrp5pg16zubk.png', 'Sun Jul 03 03:46:56 ICT 2022'),
(53, 'admin', 'i94vxprzhja5yrtjk60x5wifv3y2o0mkedejneoedxnplqqc0ued2t4y0c0qo57uilj33djj6zaxu28l.png', 'Sun Jul 03 04:32:39 ICT 2022'),
(54, 'admin', '71fzocltgn0peu3kvbah71yejgtw4p76kggnjnstbp4cusmn8ih593tnt8ezzw1kqy7y2qp3dkz95miz.png', 'Sun Jul 03 04:32:11 ICT 2022'),
(55, '10', 'j2aph3nan9jmnagtsge1otfsklnmxr02wm4y38f4peuud0zkdpr33muw2dqroezk7ga4ymkolgjg7i36.png', 'Sun Jul 03 04:35:03 ICT 2022'),
(56, '10', '9u1grm9uil0b7ah6tep8sios2zsd3z17kyf1wyr2bzx1ofkxeikg3mucldvr58oebmv19tzajyayn3bg.png', 'Sun Jul 03 04:35:15 ICT 2022'),
(57, 'admin', '4bctirjlw7ru8lsgilgsj9zmhs4fr5uylorlf0523rjn2u7x3b55jnkfrjp97ccgfqjdjedtpxyqptrz.png', 'Mon Jul 04 00:38:30 ICT 2022'),
(58, '6', 'uu5g21uf0o6qybu1qf3k27gy8pxhvzruu2nha88ofm3ed2nb7guvannyfirktnevxsy0n6o83hma8dog.png', 'Mon Jul 04 01:09:26 ICT 2022'),
(59, '6', '8aan4ksh709dh4byb6q1731m8yfthcx4hwvxjbjbl5r31bi08d6nv6xolpjur0nct4gs3but6oj50jt5.png', 'Mon Jul 04 01:09:30 ICT 2022'),
(60, '6', 'rbpmmqhutrds4rnpteta1l1kkrn4lebia8r52muf151l0axzldmb8mo4dntvvfn5u8u2zvuu5att3huy.png', 'Mon Jul 04 01:09:44 ICT 2022');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `information`
--

CREATE TABLE `information` (
  `username` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `urlavata` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `information`
--

INSERT INTO `information` (`username`, `email`, `urlavata`) VALUES
('1', 'null', 'vpd3ospkq3vp663eosgiiunwoapqait8hrd3dni6sjafdrj162dlb7jjmq5cd37cqpeu4ztudv8429lo.png'),
('10', 'Hhhhhh@hhhhh', 'ziymspaqisa7oq4zinogcogayeqy0syenycoqbsy4k2zc6tthx7mc5pxzlva3muumr4t5gpwe00cdfso.png'),
('2', 'null', '6g3huh57x13tr5h7cmgtc39h67oxf26uimj1ksmlezmky1ip1gyc6jch5kz5akxst3hv9o1quamwbxax.png'),
('6', 'sau444@444', 'tgsfk0amo8hjyxjaduc3yowkt6g6npgp22fkmvtxlqx7fyyso8i2rhb3mfnlt2q7vo6tqywvbbjk372t.png'),
('a', '', '1vi7oxr36zdyk7eo2gvacr6ynyflo6pfulqg9i1xku4rglwn0e3qxedw3fz0dy0e1hy91msu4yp8lld3.png'),
('admin', 'pdhai.18it5@vku.udn.vn', 'fur8abacswg5lvdy1m23uevh7957rmmmszjmyejd0rw6sdtt4hs1a1pk5rnv2y5pqi46krnp8m8eo49c.png'),
('haipd', '', 'el3h14uohukzflqrq0n60mq4ujsiic6620zfhbdtf3uc3d1ingm1zfutn7krzzu0jyoa7d5uo8fw7vqw.png'),
('HaiZuka', 'Abc@xyz', '74v253iod3qy6tipl90n3eerngmcrdq3gux93ucesf27ioyfh06kbjlg0m7sa8aig2l61h03hg6njccj.png'),
('UserName0005', 'thebk123@gmail.com', 'b3jaqczc14flgdp7h2tcvdurmz7lnw38e5gasxompqgn1yum63b2i01msr2ldiry03x6eooojky436z5.png'),
('Z', 'Abc@gmail.com', 'bqhhnyojxgfwafxgbfgcorvlvgqf0ab7phe8izh8z3ghhrxy4181nmcp2qxl0l09xohmzacilfupeagx.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `age` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`username`, `password`, `fullname`, `age`) VALUES
('1', '2', 'Phan &#272;&#7913;c H&#7843;i 33', 222),
('10', '', 'Ten', 10),
('2', '2', 'Two - ^^', 22),
('3', '3', 'Hai Phan', 22),
('6', '6', 'Sáu', 66),
('a', 'a', 'a', 100000000),
('admin', 'admin', 'H&#7843;i thích tâm Linh nh&#7845;t trên &#273;&#7901;i', 22),
('haipd', '1', 'Phan H&#7843;i', 22),
('HaiZuka', '1', 'Phan &#272;&#7913;c H&#7843;i', 22),
('Hoang', '123456', 'Nguy&#7877;n thanh hoàng', 20),
('Lvt', '123', 'Lê V&#259;n Truy&#7873;n ', 22),
('UserName0001', 'Password0001', 'Phan &#272;&#7913;c H&#7843;i', 48),
('UserName0002', 'Password0002', 'Fullname0002', 46),
('UserName0004', 'Password0004', 'Fullname0004', 35),
('UserName0005', 'Password0005', 'Fullname0005', 22),
('UserName0007', 'Password0007', 'Fullname0007', 54),
('UserName0008', 'Password0008', 'Fullname0008', 45),
('UserName0009', 'Password0009', 'Fullname0009', 43),
('UserName0010', 'Password0010', 'Fullname0010', 28),
('UserName0011', 'Password0011', 'Fullname0011', 69),
('UserName0012', 'Password0012', 'Fullname0012', 66),
('UserName0013', 'Password0013', 'Fullname0013', 64),
('UserName0016', 'Password0016', 'Fullname0016', 24),
('UserName0017', 'Password0017', 'Fullname0017', 27),
('UserName0019', 'Password0019', 'Fullname0019', 26),
('UserName0020', 'Password0020', 'Fullname0020', 69),
('UserName0021', 'Password0021', 'Fullname0021', 42),
('UserName0022', 'Password0022', 'Fullname0022', 36),
('UserName0023', 'Password0023', 'Fullname0023', 61),
('UserName0024', 'Password0024', 'Fullname0024', 27),
('UserName0025', 'Password0025', 'Fullname0025', 39),
('UserName0026', 'Password0026', 'Fullname0026', 22),
('UserName0027', 'Password0027', 'Fullname0027', 14),
('UserName0028', 'Password0028', 'Fullname0028', 13),
('UserName0029', 'Password0029', 'Fullname0029', 62),
('UserName0030', 'Password0030', 'Fullname0030', 25),
('UserName0031', 'Password0031', 'Fullname0031', 65),
('UserName0032', 'Password0032', 'Fullname0032', 45),
('UserName0033', 'Password0033', 'Fullname0033', 62),
('UserName0034', 'Password0034', 'Fullname0034', 23),
('UserName0035', 'Password0035', 'Fullname0035', 22),
('UserName0036', 'Password0036', 'Fullname0036', 40),
('UserName0037', 'Password0037', 'Fullname0037', 45),
('UserName0038', 'Password0038', 'Fullname0038', 58),
('UserName0039', 'Password0039', 'Fullname0039', 24),
('UserName0040', 'Password0040', 'Fullname0040', 27),
('UserName0041', 'Password0041', 'Fullname0041', 59),
('UserName0042', 'Password0042', 'Fullname0042', 66),
('UserName0043', 'Password0043', 'Fullname0043', 38),
('UserName0044', 'Password0044', 'Fullname0044', 17),
('UserName0045', 'Password0045', 'Fullname0045', 63),
('UserName0046', 'Password0046', 'Fullname0046', 18),
('UserName0047', 'Password0047', 'Fullname0047', 47),
('UserName0048', 'Password0048', 'Fullname0048', 53),
('UserName0049', 'Password0049', 'Fullname0049', 36),
('UserName0050', 'Password0050', 'Fullname0050', 36),
('UserName0051', 'Password0051', 'Fullname0051', 12),
('UserName0052', 'Password0052', 'Fullname0052', 10),
('UserName0053', 'Password0053', 'Fullname0053', 17),
('UserName0054', 'Password0054', 'Fullname0054', 52),
('UserName0055', 'Password0055', 'Fullname0055', 14),
('UserName0056', 'Password0056', 'Fullname0056', 15),
('UserName0057', 'Password0057', 'Fullname0057', 33),
('UserName0058', 'Password0058', 'Fullname0058', 24),
('UserName0059', 'Password0059', 'Fullname0059', 32),
('UserName0060', 'Password0060', 'Fullname0060', 16),
('UserName0061', 'Password0061', 'Fullname0061', 35),
('UserName0062', 'Password0062', 'Fullname0062', 36),
('UserName0063', 'Password0063', 'Fullname0063', 15),
('UserName0064', 'Password0064', 'Fullname0064', 67),
('UserName0065', 'Password0065', 'Fullname0065', 64),
('UserName0066', 'Password0066', 'Fullname0066', 23),
('UserName0067', 'Password0067', 'Fullname0067', 46),
('UserName0068', 'Password0068', 'Fullname0068', 59),
('UserName0069', 'Password0069', 'Fullname0069', 67),
('UserName0070', 'Password0070', 'Fullname0070', 24),
('UserName0071', 'Password0071', 'Fullname0071', 41),
('UserName0072', 'Password0072', 'Fullname0072', 43),
('UserName0073', 'Password0073', 'Fullname0073', 67),
('UserName0074', 'Password0074', 'Fullname0074', 17),
('UserName0075', 'Password0075', 'Fullname0075', 22),
('UserName0076', 'Password0076', 'Fullname0076', 67),
('UserName0077', 'Password0077', 'Fullname0077', 31),
('UserName0078', 'Password0078', 'Fullname0078', 31),
('UserName0079', 'Password0079', 'Fullname0079', 12),
('UserName0080', 'Password0080', 'Fullname0080', 41),
('UserName0081', 'Password0081', 'Fullname0081', 11),
('UserName0082', 'Password0082', 'Fullname0082', 46),
('UserName0083', 'Password0083', 'Fullname0083', 68),
('UserName0084', 'Password0084', 'Fullname0084', 41),
('UserName0085', 'Password0085', 'Fullname0085', 42),
('UserName0086', 'Password0086', 'Fullname0086', 51),
('UserName0087', 'Password0087', 'Fullname0087', 19),
('UserName0088', 'Password0088', 'Fullname0088', 14),
('UserName0089', 'Password0089', 'Fullname0089', 48),
('UserName0090', 'Password0090', 'Fullname0090', 58),
('UserName0091', 'Password0091', 'Fullname0091', 28),
('UserName0092', 'Password0092', 'Fullname0092', 34),
('UserName0093', 'Password0093', 'Fullname0093', 67),
('UserName0094', 'Password0094', 'Fullname0094', 48),
('UserName0095', 'Password0095', 'Fullname0095', 50),
('UserName0096', 'Password0096', 'Fullname0096', 43),
('UserName0097', 'Password0097', 'Fullname0097', 49),
('UserName0098', 'Password0098', 'Fullname0098', 34),
('UserName0099', 'Password0099', 'Fullname0099', 50),
('UserName0100', 'Password0100', 'Fullname0100', 49),
('UserName0101', 'Password0101', 'Fullname0101', 29),
('UserName0102', 'Password0102', 'Fullname0102', 42),
('UserName0103', 'Password0103', 'Fullname0103', 53),
('UserName0104', 'Password0104', 'Fullname0104', 38),
('UserName0105', 'Password0105', 'Fullname0105', 53),
('UserName0106', 'Password0106', 'Fullname0106', 37),
('UserName0107', 'Password0107', 'Fullname0107', 54),
('UserName0108', 'Password0108', 'Fullname0108', 51),
('UserName0109', 'Password0109', 'Fullname0109', 64),
('UserName0110', 'Password0110', 'Fullname0110', 29),
('UserName0111', 'Password0111', 'Fullname0111', 57),
('UserName0112', 'Password0112', 'Fullname0112', 56),
('UserName0113', 'Password0113', 'Fullname0113', 55),
('UserName0114', 'Password0114', 'Fullname0114', 43),
('UserName0115', 'Password0115', 'Fullname0115', 22),
('UserName0116', 'Password0116', 'Fullname0116', 22),
('UserName0117', 'Password0117', 'Fullname0117', 64),
('UserName0118', 'Password0118', 'Fullname0118', 59),
('UserName0119', 'Password0119', 'Fullname0119', 54),
('UserName0120', 'Password0120', 'Fullname0120', 27),
('UserName0121', 'Password0121', 'Fullname0121', 54),
('UserName0122', 'Password0122', 'Fullname0122', 54),
('UserName0123', 'Password0123', 'Fullname0123', 68),
('Z', '', 'Love you', 10);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
