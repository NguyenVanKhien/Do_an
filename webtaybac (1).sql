-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 06, 2023 lúc 02:59 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webtaybac`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `email`, `password`) VALUES
(1, 'khien', 'khienadmin@gmail.com', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `blog_id` int(11) NOT NULL,
  `blog_title` varchar(200) NOT NULL,
  `blog_content` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `posted_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `categorieBlog_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `blogs`
--

INSERT INTO `blogs` (`blog_id`, `blog_title`, `blog_content`, `image`, `posted_at`, `categorieBlog_id`) VALUES
(1, 'Muối chẩm chéo - “linh hồn” trong những bữa ăn của người Tây Bắc', 'Muối chẩm chéo - “linh hồn” trong những bữa ăn của người Tây Bắc, chấm món gì cũng ngon.\r\n\r\nNguyên liệu chính của muối chẩm chéo bao gồm hơn 10 loại gia vị khác nhau, có thể kể đến như: muối, ớt, tỏi, mì chính, Mak Khén (hạt tiêu rừng), Thảo quả... Bởi vậy muối chẩm chéo luôn có những đặc điểm về hương vị chung như: vị thơm của lá, chút cảm giác cay cay của ớt và mùi thơm hăng nồng của Mak Khén dùng để chấm xôi, các món luộc, đồ nướng hay các loại quả chua như nhót, mận, xoài, ...\r\n\r\nNấm Hương Rừng\r\n\r\nChắc hẳn ai cũng biết nấm hương rừng rất tốt cho sức khoẻ,  không chỉ là nguồn thực phẩm quý giá, mà nó còn được ứng dụng rộng rãi trong đông y và được coi là 1 vị thuốc quý.\r\n\r\n- Công dụng của Nấm Hương Rừng được nhắc đến nhiều nhất:\r\n\r\nChúng giúp tăng cường hệ miễn dịch của cơ thể: bổ sung chất sắt, hỗ trợ tiêu hoá, giải độc và bảo vệ gan, hỗ trợ chữa viêm dạ dày, viêm gan. Đặc biệt có tác dụng phòng ung thư hỗ trợ bệnh nhân ung thư rất tốt.\r\n\r\nCó tác dụng tốt đối với người cao huyết áp, tiểu đường hay trẻ em suy dinh dưỡng, người mới ốm dậy.\r\n\r\nLà thực phẩm rất giàu chất xơ. Hàm lượng chất xơ cao này ức chế sự lên men và tổng hợp glucose của nhân tế bào, từ đó có vai trò nòng cốt trong việc hấp thu glucose, ổn định đường huyết ở bệnh nhân tiểu đường.\r\n\r\nGiảm Cholesterol giúp giảm cân hiệu quả, giảm các tác động xấu của thừa cân và cải thiện sức khỏe máu tổng thể.\r\n\r\nThanh trừ các gốc tự do và chống lão hoá.', '/public/img/blog/muoichamcheo.jpg', '2022-01-10 11:04:04', 1),
(5, 'MỘC NHĨ - ĐẶC SẢN TUYÊN QUANG\r\n', 'Mộc nhĩ( nấm mèo): Được người dân Tuyên Quang  thu gom trực tiếp từ những cây gỗ mục trên cánh rừng tự  nhiên về phơi nắng khô đảm bảo an toàn thực phẩm , không chất bảo quản , không chất kích thích.\r\nMộc nhĩ hay còn gọi là nấm mèo hoặc nấm tai mèo. Mộc nhĩ là một loại nấm mọc trên thân của nhiều loại cây thân gỗ khác nhau. Mộc nhĩ được sử dụng như một loại thực phẩm và dược phẩm với nhiều tác dụng như bổ huyết, thông mạch, cầm máu và cải thiện tình trạng suy nhược toàn thân. Mộc nhĩ có nhiều tên gọi khác nhau. Chúng còn được gọi là nấm mèo, nấm tai mèo, hắc mộc nhĩ, mộc nhu, mộc nga, mộc tung hay vân nhĩ.\r\n\r\nMộc nhĩ có mặt trên nhẵn, mặt dưới có phủ một lớp lông màu nâu. Mô nấm có chứa chất keo và mặt sinh sản nhẵn hoặc nhăn, được phủ một lớp phấn trắng do các bào tử phóng ra khi nấm trưởng thành.\r\n\r\nCơ quản sinh sản của đa số loại mộc nhĩ là đảm đa bào, có hình chùy, nằm sâu bên trong chất keo. Một cây mộc nhĩ có chứa một bào tử có cuống nhỏ, phát triển ở bên dưới kéo dài qua lớp bao nhầy và đến bề mặt của thể quả. Trên mỗi cuống nhỏ có một bào tử đảm. Phần thịt của cây mộc nhĩ thường dày khoảng 1 – 3 mm. Thế quả của Mộc nhĩ được dùng để làm dược liệu. Tên gọi khoa học là Auricularia.\r\n\r\nMộc nhĩ phân bố lan rộng ở các vùng ôn đới và cận nhiệt đới trên khắp cả thế giới. Chúng còn được tìm thấy ở các nước châu Âu, Bắc Mỹ, châu Á, Australia, Nam Mỹ và cả châu Phi. Ở nước ta, mộc nhĩ được trồng để thu hoạch làm thuốc và sử dụng dược liệu. Mộc nhĩ được cho là có chất lượng tốt nhất khi được tạo điều kiện mọc và phát triển ở thân của các loại cây như hòe, dướng, ruối, sắn, so đũa, sậu, sung, mít,... Ngoài việc thu hái tự nhiên, mộc nhĩ còn được trồng ở thân cây mít, sắn và so đũa để thu hoạch làm dược liệu. Mộc nhĩ thường sẽ được thu hái vào mùa hè và mùa thu. Sau khi thu hái thì rửa sạch, cắt bỏ phần bẩn dính vào giá thể rồi được mang đi phơi khô.\r\nTác dụng: Mộc nhĩ không chỉ mang lại hương vị đặc biệt hơn cho món ăn hàng ngày mà nó còn có giá trị dinh dưỡng cao và là một vị thuốc quý.\r\n\r\n- Nguyên liệu giúp món ăn trở nên phong phú, ngon miệng hơn, đặc biệt được dùng trong dịp Tết.\r\n- Chống oxy hóa.\r\n- Hạ đường máu.\r\n- Hỗ trợ làm giảm mỡ trong máu.\r\n- Giúp phòng chống bệnh ung bướu.\r\n- Tác dụng chống viêm.\r\n- Hỗ trợ chống đông máu.\r\n- Tác dụng bảo vệ hệ thống tim mạch.', '/public/img/blog/mocnhi.jpg', '2022-03-18 11:04:04', 1),
(7, 'TƯƠNG ỚT MƯỜNG KHƯƠNG CHÍNH GỐC - ĐẬM ĐẶC, CHUẨN VỊ\r\n', 'Mường Khương là một huyện biên giới phía Bắc của Việt Nam thuộc tỉnh Lào Cai. Để thích ứng được với khí hậu nơi đây, vào những mùa lạnh, bà con Mường Khương thường có thói quen ăn ớt cay để cơ thể có khả năng chống lại được cái giá lạnh của vùng cao. Với hương vị cay cay, thơm thơm ăn một lần là thấy nhớ món tương ớt đặc trưng của vùng núi, món tương ớt Mường Khương lâu dần đã trở thành một sản phẩm đặc trưng của vùng đất Mường Khương và được nhiều người biết đến.\r\n\r\n Tương ớt Mường Khương được kết hợp từ 100% nguyên liệu tự nhiên, là những quả ớt được trồng tại các sườn núi Mường Khương, loại ớt này không to, nên bà con nơi đây gọi nó là Ớt Thóc, nó được xếp thuộc loại cay nhất thế giới (ngang với ớt Habanero). Ớt này có vị cay cay, đậm đà, hương vị hoàn toàn khác biệt so với những loại ớt thông thường như dưới miền xuôi.\r\n\r\n\r\nThông thường ớt thóc được thu hoạch từ tháng giêng đến tháng 4 và tháng 5 hàng năm là chính vụ, tuy nhiên giống ớt này có đặc điểm khác với ớt dưới miền xuôi là nó cứ ra hoa, đậu quả, hái quả lại ra hoa đến tầm tháng 11 hàng năm thì mới kết thúc mùa thu hoạch của người dân. Với bàn tay khéo léo, kết hợp sự chăm chỉ, chịu khó, bà con đất Mường Khương đã biết kết hợp giữa nguyên liệu là những quả ớt chín mọng và các gia vị khác như một chút rượu ngô, tỏi bóc hết lớp áo, hạt rau thì là, hạt rau mùi, hạt dổi, hạt thảo quả... Qua một thời gian ủ dài khoảng 2 tháng liên tục từ khi chế biến, ớt mới có đủ độ ngấu và hương vị chua chua, dịu dịu, thơm thơm khi các loại gia vị ngấm vào nhau. Trong thời gian ủ, người làm thường xuyên phải đảo thùng tương ớt từ 1 tới 2 lần trên ngày để tránh hiện tượng lên men khi ủ ớt trong thời gian dài. Tương ớt được ủ trong thùng gỗ hoặc thùng nhựa sẽ đảm bảo cho ra một sản phẩm tương ớt ngon đúng chất Mường Khương.\r\n\r\nTrong những năm gần đây, do nhu cầu ngày càng nhiều, lượng ớt được thu hái từ cây trên núi không đủ để đáp ứng cho sản xuất tương ớt Mường Khương, nên bà con có quy hoạch và mở rộng diện tích trồng thêm ở dưới xuôi để có thêm nguồn nguyên liệu, tránh bị gián đoạn trong sản xuất. Thông thường theo tỷ lệ làm một mẻ tương ớt với khoảng 30kg ớt tươi sẽ cần 100g hạt thì là, 100g hạt mùi, 50g dổi, 3kg tỏi, nửa lít rượu ngô, 3kg muối và 50g quế, 50g thảo quả và 5 lít nước đun sôi để nguội.\r\n\r\nNguyên liệu là chính, nhưng khâu chế biến cũng rất quan trọng. Để tạo ra được mẻ tương ớt chuẩn vị ngon đặc trưng của nó, người làm phải đảm bảo từ khâu lựa chọn nguyên liệu đến các dụng cụ để xay hay ủ. Nếu không đảm bảo được những yêu cầu trên thì tương ớt sẽ nhanh bị và hỏng.', '/public/img/blog/tuongotMK.jpg', '2021-12-25 11:04:04', 1),
(15, 'Nộm gà măng khô và lẩu xuyên tiêu ở Măng Đen\r\n', 'KON TUMHai món ăn lạ miệng sẽ giúp du khách ấm bụng giữa cái lạnh của miền cao nguyên.\r\n\r\nMăng Đen là một thị trấn nhỏ trên cao nguyên, thuộc địa bàn huyện Kon Plông, tỉnh Kon Tum, cách thành phố Kon Tum khoảng 60 km. Đây là một trong những điểm du lịch nổi tiếng ở vùng Tây Nguyên, được nhiều người ví như \"Đà Lạt thứ hai\" nhờ khí hậu mát mẻ, lạnh về đêm, và những cánh rừng thông bạt ngàn.\r\n\r\nỞ Măng Đen, sau những giờ dạo chơi giữa rừng thông, hay thỏa thích hái cam trên đồi, du khách hãy dừng chân tại một quán nhỏ không xa khu trung tâm để \"nạp năng lượng\". Măng Đen nhỏ, không có nhiều hàng quán nên nếu đi vào mùa thấp điểm, sẽ ít lựa chọn. Một điều khá hài hước là vào đây, bạn có thể gặp lại toàn những người trước đó bạn từng chạm mặt ở vài điểm du lịch. Nhiều người vẫn nói \"Ăn theo Internet\" và với quán này, đó là một \"kết quả search không tồi\".\r\n\r\nẤm bụng ở Măng Đen với lẩu xuyên tiêu và nộm gà măng khô - 2\r\n\r\n\r\nQuán ăn không rộng, đủ khoảng hơn chục bộ bàn ghế, ánh đèn vàng tạo cảm giác ấm cúng và gần gũi. Nơi đây phục vụ cả ăn trưa và tối. Thực đơn của quán khá đơn giản, với món lẩu xuyên tiêu mà gần như thực khách nào cũng gọi.\r\n\r\nMột món ăn mới chỉ nghe tên đã thấy vị cay, nhưng nhờ đó mà thực sự thích hợp với khí hậu tại Măng Đen. Theo chủ quán, nước lẩu có công thức riêng, được hầm từ các loại rau củ quả, kèm những thảo dược có nguồn gốc Trung Quốc như kỷ tử và táo đỏ. Nước dùng được hầm trong nhiều giờ để ra vị ngọt thanh tự nhiên và trong. Món lẩu có một chút liên tưởng tới lẩu Tứ Xuyên, được chia làm hai ngăn với hai vị khác nhau, trong đó có một ngăn rất cay và một ngăn không cay. Để cảm nhận rõ nhất vị ngon của món ăn, một lời khuyên là hãy cố thử cay một lần cho biết.\r\n\r\nQuán còn có một món mà nhất định bạn phải thử, rất thích hợp để khai vị, đó là nộm (gỏi) gà măng khô. Đúng như tên gọi, món có hai thành phần chính là gà và măng khô, kèm lạc, các loại rau như thơm bạc hà, hành tây, cà rốt... với vị không khác bất kỳ một loại nộm nào, chua chua, ngọt ngọt. Thế nhưng, sự kết hợp khá lạ này lại phù hợp một cách đặc biệt, và tạo nên một món ăn mà có thể bạn đã gọi một đĩa sẽ phải gọi luôn đĩa thứ hai vì \"chén\" quá nhanh.\r\n\r\nẤm bụng ở Măng Đen với lẩu xuyên tiêu và nộm gà măng khô - 1\r\n\r\nĐịa chỉ tham khảo: Măng Đen Lữ quán: Một nồi lẩu có giá từ 250.000 đến 350.000 đồng tùy số lượng người ăn. Một đĩa nộm có giá 100.000 đồng.', '/public/img/blog/doan1.jpg', '2022-03-09 11:04:04', 1),
(21, 'Công viên địa chất toàn cầu UNESCO: Cao nguyên đá Đồng Văn', 'Việt Nam từ lâu đã trở thành một điểm đến hấp dẫn đối với khách du lịch bởi những cảnh quan địa lý - địa chất đặc sắc, chứa đựng những dấu ấn tiêu biểu về lịch sử phát triển trái đất, những hiện tượng tự nhiên, tính đa dạng sinh học cao, với những dân tộc trong các bộ trang phục màu sắc rực rỡ, những truyền thống văn hoá lâu đời của cộng đồng dân cư bản địa và cả những sản vật địa phương đa dạng.\r\n\r\nTất cả những điểm đặc sắc ấy, bạn đều có thể tìm thấy được ở ba công viên địa chất toàn cầu của Việt Nam. Ngày 3/10/2010, Cao nguyên đá Đồng Văn đã trở thành công viên địa chất UNESCO đầu tiên của Việt Nam và thứ hai ở Đông Nam Á.\r\n\r\nNăm 2014 và năm 2019, UNESCO đã tái công nhận Cao nguyên đá Đồng Văn là thành viên của mạng lưới Công viên địa chất toàn cầu UNESCO giai đoạn 2015-2018 và giai đoạn 2019-2022.\r\n\r\nĐánh giá cao giá trị của cao nguyên đá, Thủ tướng đã phê duyệt quy hoạch tổng thể bảo tồn, tôn tạo và phát huy giá trị công viên địa chất toàn cầu cao nguyên đá Đồng Văn giai đoạn 2012-2020 và tầm nhìn 2030.\r\n\r\nĐặc sắc địa lý-địa chất\r\nCông viên địa chất toàn cầu UNESCO: Cao nguyên đá Đồng Văn\r\nCao nguyên đá Đồng Văn có trên 70% diện tích đá vôi lộ diện.\r\n“Tsi muaj lub roob siab dua koj lub hauv caug” “Không có ngọn núi nào cao hơn đầu gối” - câu thành ngữ này của người Mông nghe tự hào biết mấy. Bạn sẽ càng thấy câu nói này tuyệt đẹp khi tới Cao nguyên đá Đồng Văn, đặt chân lên một vùng núi đá vôi hùng vĩ có độ cao trên 1.000m.\r\n\r\nCông viên địa chất này gồm 4 huyện Quản Bạ, Yên Minh, Đồng Văn và Mèo Vạc với tổng diện tích tự nhiên là 2.356km2, nằm ở miền Bắc Việt Nam có trên 70% diện tích đá vôi lộ diện.\r\n\r\nVùng đất này là sự kết hợp ngoạn mục và độc đáo giữa những đỉnh núi cao vun vút và hẻm vực sâu thăm thẳm tại phần kéo dài của dãy núi phía Đông rặng Himalaya, với đỉnh cao nhất - Mạc Vạc (1.971m) và hẻm sâu nhất - Tu Sản, cũng là hẻm vực sâu nhất của Đông Nam Á, với chiều sâu vách đá lên tới hơn 700m.\r\n\r\nCó niên đại từ kỷ Cambrian (khoảng 550 triệu năm trước), đến nay, Cao nguyên đá Đồng Văn đã trải qua 7 thời kỳ địa chất khác nhau. Du khách đến đây, có thể nhìn tận mắt những dấu vết còn lưu lại trong các di chỉ cổ sinh vật học, địa tầng, địa mạo, kiến tạo, karst, hang động và đứt gãy quan trọng.\r\n\r\nNhững \"vết tích\" này còn phản ánh hai trong số năm sự kiện lớn trong lịch sử sinh giới của Trái đất là những ranh giới tuyệt chủng sinh giới hàng loạt. Cụ thể là Biến cố sinh học Devon muộn xảy ra ở ranh giới Frasnian-Famennian, khoảng 364 triệu năm trước, làm cho 19% số họ và 50% số giống cổ sinh bị tuyệt diệt và Biến cố sinh học Permi-Trias xảy ra cách đây 251 triệu năm trước, là sự kiện lớn nhất trong 5 biến cố của sinh giới, làm tuyệt diệt khoảng 90% số giống và loài sinh vật biển.\r\n\r\nNếu bạn quan tâm đến địa chất học, bạn hẳn sẽ thấy rất thú vị được quan sát 3 nhóm đá trầm tích, đá lửa và đá biến chất, cũng như các đặc trưng địa tầng, thạch địa tầng và sinh địa tầng.\r\n\r\nĐối với những người nghiên cứu cổ sinh vật học, từng vách đá vôi hãy còn ghi lại hóa thạch của 19 nhóm sinh vật cổ có giá trị như cá cổ, hệ thực vật cổ đại, động vật tay cuộn (eurispirifer tonkinesis), hai mảnh vỏ, foraminifera, san hô, conodonta, crinoidea và động vật thân mềm. Tất cả tái hiện lại một câu chuyện cổ về một thời kỳ xa xưa của trái đất.\r\n\r\nĐa dạng sinh học\r\nCông viên địa chất toàn cầu UNESCO: Cao nguyên đá Đồng Văn\r\nVoọc mũi hếch, một trong 25 loài linh trưởng có nguy cơ tuyệt chủng cao nhất trên thế giới. (Nguồn: Báo Hà Giang)\r\n \r\n\r\nKhông chỉ đa dạng về cổ sinh vật, Cao nguyên đá Đồng Văn còn có hai khu bảo tồn thiên nhiên là Khu bảo tồn thiên nhiên Du Già và Khu bảo tồn loài và sinh cảnh Khau Ca. Hai khu bảo tồn này phong phú về các loài động, thực vật như cây lá kim, sơn dương phương Nam (một loài dê núi đơn độc) và nhiều loài chim bản địa.\r\n\r\nDo đó, nơi này có hệ động thực vật rất phong phú, bao gồm 289 loài thực vật bậc cao, thuộc 83 họ; hệ động vật trên núi đá vôi với 171 loài trong 73 họ và 24 bộ. Có 27 loài gồm 17 loài thú, 2 loài chim và 8 loài bò sát là những động vật quý hiếm được ghi trong Sách đỏ Việt Nam.\r\n\r\nNổi tiếng nhất nơi này là loài voọc mũi hếch. Voọc mũi hếch, còn được gọi là voọc lông tuyết (Rhinopithecus avunculus) thuộc họ Khỉ Cựu, là một trong năm loài linh trưởng đặc hữu của Việt Nam. Loài vật này còn được phát hiện ở vùng núi châu Á, phía Nam Trung Quốc, thường sống ở những khu vực núi cao hiểm trở, thời tiết khắc nghiệt.\r\n\r\nĐây là một trong 25 loài linh trưởng có nguy cơ tuyệt chủng cao nhất trên thế giới, được xếp vào mức độ nguy cấp cao nhất trong Sách đỏ về các loài động vật bị đe dọa của Hiệp hội Bảo tồn thiên nhiên thế giới và Việt Nam. Loài voọc mũi hếch đã từng được coi cho là đã tuyệt chủng cho đến khi được phát hiện lại vào đầu những năm 1990, chỉ được tìm thấy ở tỉnh Hà Giang với 200 cá thể.\r\n\r\nPhát triển bền vững\r\nCông viên địa chất toàn cầu UNESCO: Cao nguyên đá Đồng Văn\r\nCột cờ Lũng Cú. (Ảnh: Ngọc Bảo)\r\nCao nguyên đá Đồng Văn là nơi sinh sống của hơn 250.000 người dân thuộc 17 dân tộc anh em Mông, Na Chí, Pu Péo, Lô Lô, Nùng, Hoa, Giấy… của dải đất Việt. Mỗi dân tộc có một nét sinh hoạt và tập tục lễ hội riêng tạo nên di sản văn hóa độc đáo và phong phú của khu vực này với những “Chợ tình Khau Vai”, Lễ hội “Gầu Tào” của người Mông, Lễ hội “Cúng thần rừng” của người Pu Péo, Lễ ấp sắc của người Dao...\r\n\r\nKể từ khi cao nguyên đá Đồng Văn được trao danh hiệu Công viên địa chất toàn cầu UNESCO, lượng khách du lịch đến đây liên tục tăng, người dân cũng được hưởng lợi hơn nhờ du lịch. Đến nay 100% thôn bản, trường học trên vùng cao nguyên đá Đồng Văn được tuyên truyền giáo dục về công tác bảo vệ, giữ gìn di sản.\r\n\r\nTại Công viên Địa chất Toàn cầu UNESCO Cao nguyên đá Đồng Văn, bạn sẽ được đích thân các chàng trai, cô gái người dân tộc hướng dẫn tham quan các di chỉ địa chất, di tích lịch sử và đến từng gia đình tham quan đời sống thường ngày và văn hóa của người dân bản xứ.\r\n\r\nVào tháng 1-2, du khách sẽ đến với mùa hoa đào, hoa mận nở rộ khắp các triền núi, tháng 3-4 là mùa hoa gạo đỏ rực rỡ cổng trời, tháng 4-5 là mùa nước đổ, những thửa ruộng bậc thang tấp nập rộn ràng, tháng 6-8 là mùa trồng trọt, tháng 9-10 bạn sẽ đến với mùa lúa chín vàng no ấm, đặc biệt được quan tâm là tháng 10-12 với mùa hoa Tam Giác Mạch cánh mỏng manh chuyển từ trắng sang phớt hồng, ánh tím và đỏ sậm rất đặc trưng, tháng 12 về lại là mùa cải vàng rộ nở….\r\n\r\nĐến vùng đất này, là đến thăm vùng đất địa đầu Tổ Quốc với cột cờ Lũng Cú đánh dấu điểm cực Bắc của đất nước, cùng nhau vượt qua đèo Mã Pí Lèng, cung đường đèo hiểm trở dài 20km, cao 1.200m, nằm trên con đường mang tên Hạnh Phúc, nối liền thành phố Hà Giang, Đồng Văn và thị trấn Mèo Vạc, ngắm nhìn những cô gái Mông ngồi dệt bên khung cửi, những nếp nhà trình tường đơn sơ, giản dị, những bờ rào đá bền bỉ, vững vàng…\r\n\r\nĐến với Đồng Văn, đến với vùng đất “cúi mặt sát đất, ngẩng mặt đụng trời” này, bạn không chỉ có được những trải nghiệm vô cùng phong phú. Đến nơi đây là bạn sẽ góp phần vào công cuộc phát triển du lịch, đem lại cho người dân và Công viên địa chất toàn cầu nơi đây một sinh kế phát triển kinh tế bền vững, chú trọng tới việc nâng cao đời sống cho người dân, bằng cách khai thác văn hóa bản địa, trong sự hòa hợp với thiên nhiên.', '/public/img/blog/caonguyendahagiang.jpg', '2023-04-25 13:26:04', 2),
(22, 'Cẩm nang du lịch Mai Châu, Hòa Bình mới nhất', 'Tọa lạc nơi núi rừng Tây Bắc, thung lũng Mai Châu hội tụ đủ những yếu tố cần thiết để trở thành địa điểm du lịch lý tưởng: khí hậu ôn hòa mát mẻ, cảnh sắc thiên nhiên hùng vĩ nên thơ, con người hiền hậu thân thiện, và bản sắc văn hóa truyền thống đặc trưng. Những trải nghiệm độc đáo và tươi mới là điều bạn chắc chắn sẽ nhận được khi lựa chọn Mai Châu, Hòa Bình làm nơi dừng chân của mình. Dưới đây là Cẩm nang du lịch Mai Châu, Hòa Bình mới nhất dành cho bạn.\r\n\r\n1. Mai Châu ở đâu?\r\n \r\nMai Châu là một huyện miền núi nằm ở điểm cực tây của tỉnh Hòa Bình. Cách trung tâm thành phố Hà Nội khoảng 110 km, tương đương với gần 3 tiếng đồng hồ di chuyển bằng ô tô, đường di chuyển cũng khá bằng phẳng và an toàn, Mai Châu sớm đã trở thành một trong những địa điểm du lịch được khách du lịch gần xa tìm đến để nghỉ dưỡng vào dịp cuối tuần cùng người thân và gia đình. Núi rừng, thiên nhiên, khí hậu đã khiến Mai Châu trở thành một trong những địa điểm du lịch nổi tiếng nhất miền Bắc. Bạn sẽ ngỡ ngàng vì vẻ đẹp hoang sơ và thanh bình ở Mai Châu.\r\nXem thêm: Lịch sử hình thành và phát triển huyện Mai Châu\r\n\r\n2. Thời tiết, khí hậu ở Mai Châu\r\n\r\n\r\n \r\nThiên nhiên đã ban tặng cho Mai Châu cảnh quan núi rừng hùng vĩ, nên thơ, và cũng không quên “gửi gắm” cho nơi này một miền khí hậu ôn hòa, dịu mát, đủ sức làm say lòng bất kỳ ai một lần đặt chân tới Mai Châu. Về cơ bản, bốn mùa Mai Châu đều đem lại cho du khách ghé thăm cảm giác dễ chịu và thoải mái.\r\n \r\n2.1. Mùa hè\r\n\r\n \r\nMai Châu mùa hè có một đặc điểm rất khác so với những địa phương miền Bắc khác: sự dịu mát. Trong khi nhiệt độ tại trung tâm thành phố Hà Nội luôn đạt ngưỡng 38 – 39 độ C vào mùa hè, nhiệt độ trung bình ở Mai Châu luôn nằm trong khoảng nhiệt độ từ 27 – 31 độ C. Vào ban đêm, nhiệt độ cũng không thấp hơn 34 độ C. Đây là nhiệt độ thích hợp để bạn và những người thân của mình tận hưởng một không gian rộng rãi, mát mẻ ngay giữa những ngày hè bức bối, nóng nực. Tuy vậy, bạn cũng cần lưu ý: khoảng tháng 7 tại Mai Châu có độ ẩm khá cao, có thể gây mưa lớn. Bạn nên theo dõi thường xuyên các bản tin dự báo thời tiết để lựa chọn thời điểm thích hợp cho chuyến du lịch Mai Châu của mình.\r\n \r\n2.2. Mùa thu\r\n \r\nĐến Mai Châu vào mùa thu, bạn sẽ tận hưởng một bầu không khí mát mẻ hơn so với mùa hè, nhiệt độ trung bình chỉ nằm trong khoảng 26 độ C. Độ ẩm không khí cũng giảm, cảm giác bí bách khi du lịch Mai Châu cũng không còn. Đặc biệt hơn, bạn còn có dịp chiêm ngưỡng những thửa ruộng vàng rực, vì đây chính là mùa lúa chín tại Mai Châu. Thời điểm thích hợp này rất phù hợp để bạn du lịch cùng người thân và bạn bè. Một năm Mai Châu sẽ có 2 mùa lúa vàng: tháng 6 và tháng 10. Bạn đừng quên lưu lại vào sổ tay kế hoạch du lịch của mình địa danh Mai Châu bạn nhé.\r\n \r\n2.3. Mùa đông\r\n\r\n\r\n \r\nMùa đông tại Mai Châu (khoảng thời gian tháng 11 – 1 hàng năm) là thời điểm có không khí tương đối lạnh, nhiệt độ thường rơi vào khoảng 16 độ C. Khi đi du lịch trong khoảng thời gian này, bạn nên chú ý mặc những bộ trang phục ấm như áo khoác, áo len, khăn quàng cổ,… để tránh cho mình không phải gặp những vấn đề về sức khỏe, và cũng để cuộc vui được trọn vẹn.\r\n \r\n2.4. Mùa xuân\r\n\r\n\r\n \r\nMai Châu mùa xuân, tháng 1, tháng 2 chắc chắn sẽ làm bạn ngất ngây với những cánh hoa rừng tỏa sắc. Đây là thời điểm mà hoa ban, hoa đào bung nở vào độ rực rỡ nhất. Thời tiết của Mai Châu thời điểm này cũng vô cùng dễ chịu, nhiệt độ khoảng 15-20 độ C. Bạn và gia đình có thể tranh thủ tiết trời xuân dịu nhẹ để thăm quan những danh lam thắng cảnh tại miền Mai Châu Tây Bắc.\r\n \r\n3. Đi Mai Châu mùa nào đẹp nhất?\r\n\r\n\r\n \r\n3.1. Mùa lúa chín\r\n \r\nMai Châu mùa nào cũng đẹp. Tới Mai Châu mỗi mùa, bạn lại có những trải nghiệm thật mới lạ. Cuối tháng 5, khi học sinh vừa được nghỉ hè cũng là lúc Mai Châu bước vào vụ gặt đầu tiên trong năm. Người nông dân tất bật thu hoạch những hạt lúa vàng trên đồng ruộng.Mùi khói tỏa và mùi lúa chính tràn ngập Mai Châu. Cuối tháng 10, sắc vàng rực của những cánh đồng lúa chín sẽ quyến rũ bạn mọi góc cạnh. Có cơ hội được chiêm ngưỡng 360 độ thung lũng lúa chín thì còn gì bằng.\r\n \r\n3.2. Mùa nước đổ\r\n\r\n\r\n \r\nNgoài ra, du lịch Mai Châu trong khoảng thời gian cuối tháng 2 và đầu tháng 6 cũng là một ý tưởng độc đáo. Thời gian này, người nông dân dẫn nước từ suối vào các thửa ruộng. Cả thung lũng Mai Châu hiện lên như một tấm gương khổng lồ lấp lánh dưới ánh mặt trời Đây là thời gian nhiều nhiếp ảnh gia lên Mai Châu để săn những bức ảnh đẹp nhất.\r\n \r\n3.3. Mùa lúa xanh\r\n\r\n\r\n \r\nĐến Mai Châu từ tháng 3 đến tháng 5 và từ tháng 6 đến tháng 10, bạn sẽ tận hưởng những khoảnh khắc yên bình của Mai Châu nhất trong năm. Cả thung lũng xanh rờn trong sắc xanh của lúa đang thì con gái. Bạn sẽ được khám phá thiên nhiên Mai Châu khi Mai Châu không quá đông khách du lịch.\r\n \r\nXem thêm: Đi Mai Châu mùa nào đẹp?\r\n \r\n4. Đường đi từ Hà Nội đến Mai Châu\r\n \r\nNếu bạn muốn cùng bạn bè trải nghiệm trọn vẹn chuyến du lịch Mai Châu, việc di chuyển tự túc bằng ô tô (hoặc xe máy) là một lựa chọn đúng đắn. Từ trung tâm thành phố Hà Nội, bạn có thể di chuyển theo các cung đường sau để lên Mai Châu – Hòa Bình:\r\n \r\n4.1. Xe máy\r\n \r\nBạn có thể di chuyển từ khu vực Nguyễn Trãi (Hà Đông), đi vào Quang Trung – Ba La – Chúc Sơn – Xuân Mai – Lương Sơn – Kỳ Sơn rồi rẽ vào trung tâm Hòa Bình. Từ Hòa Bình, tiếp tục cung đường đi Cao Phong – Tân Lạc – đèo Thung Khe. Từ Thung Khe, bạn đi theo biển chỉ dẫn thêm 6 km theo đường 15 để đến được Mai Châu.\r\n \r\n4.2. Ô tô\r\n \r\nBạn có thể đi theo đại lộ Thăng Long đến thẳng thành phố Hòa Bình. Cứ tiếp tục đi thẳng đến Lương Sơn, thị trấn Mai Châu – Hòa Bình. Chú ý trên các cung đường lớn, bạn cần tuân thủ luật giao thông để bảo vệ an toàn cho bản thân và những người đi đường xung quanh.\r\n \r\n4.3. Xe khách\r\n \r\nBạn có thể mua vé ở bến xe Mỹ Đình hoặc Giáp Bát để đi Mai Châu (Hòa Bình). Xuống ở ngã ba Tòng Đậu, bạn đi xe ôm vào trung tâm thung lũng Mai Châu cách đó khoảng 5 km. Giá vé đi ôtô khoảng 90.000-110.000 đồng/người, tùy vào hãng xe.\r\n \r\nXem thêm: Phương tiện di chuyển lên Mai Châu\r\n5. Phương tiện di chuyển ở Mai Châu\r\n \r\nMai Châu là một thung lũng có địa hình khá bằng phẳng và diện tích không quá lớn nên bạn có thể di chuyển dễ dàng bằng các phương tiện đơn giản như xe đạp, xe điện hay thậm chí là đi bộ. Trong bán kính khoảng 10km đổ lại, bạn có thể thuê xe đạp hoặc dùng xe đạp miễn phí ở khu nghỉ dưỡng để khám phá các bản làng xung quanh như Bản Lác, bản Văn, Bản Pom Coong. Đây là phương tiện ưa thích của các bạn trẻ hay những cặp đôi đi nghỉ tuần trăng mật. Các gia đình có trẻ nhỏ cũng sử dụng phương tiện này để các bé được trải nghiệm một cuộc sống gần gũi với thiên nhiên.\r\n \r\n\r\n \r\nNếu gia đình bạn có người già hoặc trẻ nhỏ không muốn vận động mạnh, xe điện là phương tiện di chuyển hoàn hảo. Bạn sẽ được tham quan các bản quanh Mai Châu với giá khoảng 300.000VND/người. Xe điện chạy bằng ắc quy với tốc độ vừa phải giúp bạn ngắm cảnh và chụp ảnh ngay trên xe mà không tốn công sức. Ngoài ra bạn cũng có thể thuê xe máy ở Mai Châu với chi phí không quá cao.\r\n \r\n\r\n \r\nĐể đến thăm các địa điểm xa hơn trong bán kính 30km như Ba Khan, Cột Cờ Mai Châu, bạn có thể thuê taxi hoặc đi ô tô riêng. Ô tô có ưu điểm là tiện lợi nhưng khó vào được các bản có đường nhỏ hoặc đường đất.\r\n \r\nMột cách khác để di chuyển ở Mai Châu chính là đi bộ. Bạn có thể đi bộ từ khu nghỉ dưỡng tham quan các cánh đồng lúa hoặc bản làng nếu đủ sức khỏe và thời tiết không quá khắc nghiệt.\r\n \r\nXem thêm: Phương tiện di chuyển ở Mai Châu\r\n \r\n\r\n \r\n6. Khách sạn, khu nghỉ dưỡng ở Mai Châu\r\n \r\n6.1. Homestay\r\n\r\n\r\n \r\nỞ Mai Châu, mô hình du lịch cộng đồng rất phổ biến với những homestay do người dân xây dựng và quản lý. Đây thường là những nhà sàn có diện tích lớn dành cho những nhóm du lịch từ 10 người trở lên. Đây là những cơ sở lưu trú gần gũi với đời sống người dân, giá thành không quá cao và hợp cho những nhóm khách du lịch thanh niên, sinh viên, học sinh không đòi hỏi quá nhiều về chất lượng dịch vụ.\r\nĐối với nhóm khách du lịch như cặp đôi nghỉ honeymoon, nhân viên công sở hoặc gia đình nhiều thế hệ (gồm cả trẻ em và người già) thì mô hình nghỉ dưỡng ở các resort phù hợp hơn.\r\n \r\n6.2. Resort\r\n\r\n\r\n \r\nẨn mình giữa núi rừng yên tĩnh, lẫn trong sương mù lơ lửng nơi sườn núi trùng điệp đang trải xuống thung lũng, Mai Châu Ecolodge mang tới du khách không gian yên tĩnh, hoang sơ nhưng không kém phần lãng mạn. Với vị trí thuận lợi, chỉ cách trung tâm thị trấn Mai Châu và các làng văn hóa xung quanh từ 1 đến 3km, từ khu nghỉ dưỡng 4 sao Mai Châu Ecolodge, du khách có thể dễ dàng tiếp cận những điểm tham quan du lịch nổi tiếng mang đậm bản sắc địa phương và người dân vô cùng mến khách của Mai Châu như bản Pom Coọng, bản Lác, Tòng Đậu… \r\nHoạt động dựa trên các nguyên tắc gần gũi thiên nhiên, bảo vệ môi trường, văn hóa và du lịch bền vũng, Mai Châu Ecolodge được xây dựng mô phỏng theo kiến trúc nhà người Thái với trần nhà làm bằng cây Loi (một loại cây rừng), mái cọ, chi tiết trang trí dân dã, mộc mạc nhưng cũng vô cùng tinh tế. Không gian sẽ mang đến du khách cảm giác yên bình và ấm cùng sau những ngày làm việc căng thẳng.\r\nBên cạnh địa thế nằm giữa núi rừng, nơi du khách có thể chiêm ngưỡng bức tranh thung lũng thấp thoáng từng ruộng ngô, ruộng lúa, cảm nhận cuộc sống tĩnh lặng tại vườn riêng của từng bungalow, Mai Châu Ecolode còn mang tới du khách cơ hội thưởng thức các chương trình ca múa truyền thống của các dân tộc Tây Bắc vào các tối hàng ngày.\r\nCùng với đầy đủ các tiện ích của một khu nghỉ dưỡng 4 sao như nhà hàng Hoa Lan với sức chứa 90 thực khách, khu Spa thư giãn, quầy bar với không gian vừa hiện đại vừa cổ điển, hồ bơi tiêu chuẩn 200m vuông trên đỉnh đồi, sự phục vụ chu đáo, thân thiện và chuyên nghiệp của đội ngũ nhân viên tại Mai Chau Ecolodge chắc chắn sẽ làm hài lòng du khách trong thời gian lưu trú.\r\nThông tin chi tiết liên hệ: Mai Chau Ecolodge: 024 3221 6726/ 0901 763 838\r\n \r\n\r\n \r\n7. Thăm gì ở Mai Châu?\r\nXem thêm: 10 điểm sống ảo ở Mai Châu\r\n7.1 Khám phá bản sắc dân tộc Thái\r\n\r\n\r\n \r\nMai Châu là nơi người Thái Trắng sinh sống từ lâu đời. Khác với người Thái Đen ở Điện Biên, người Thái Trắng có lối sống đặc trưng riêng, từ trang phục, lối canh tác và nhà sàn. Bạn có thể đến các bản Lác, Văn và Pom Coong để thăm những làng văn hóa du lịch, mua sắm đồ lưu niệm và ghé chơi những nếp nhà sàn xinh xắn. Trong đó bản Lác là bản đông khách du lịch hơn cả vì có nhiều nhà nghỉ cộng đồng. Bản Văn là bản mới được quy hoạch thành bản văn hóa du lịch, nhiều khách du lịch người nước ngoài. Bản Pom Coong xa hơn hai bản kia một chút và cũng rất hấp dẫn khách du lịch. Chỉ cần đạp xe qua các con đường quê vòng vèo, tận hưởng hương vị cánh đồng lúa và chụp thật nhiều ảnh đẹp.\r\n \r\nXem thêm: Sự khác nhau giữa người Thái Đen và người Thái Trắng\r\n \r\n7.2. Trekking ở Mai Châu\r\n\r\n\r\n \r\nRuộng lúa ở Mai Châu được trồng trên địa hình dốc thoai thoải, xen lẫn là những phiến đá đen. Tuy không có vẻ hùng vĩ như ruộng bậc thang Mù Cang Chải hay Hoàng Su Phì nhưng bạn vẫn có thể đi bộ vào những bản sâu như bản Bước, bản Kha, Bản Tẻ và xóm Kha. Tuy nhiên, những tuyến trekking này cần có sự dẫn đường của hướng dẫn địa phương và trang bị đầy đủ dụng cụ cho một chuyến đi mang tính mạo hiểm.\r\nNgoài ra, những hang động như Hang Chiều, Hang Mỏ Luông cũng gây tò mò cho du khách thích khám phá. Leo bộ 1200 bậc thang vào Hang Chiều, bạn sẽ được ngắm nhìn vẻ đẹp siêu thực của nhũ đá và ngắm nhìn vẻ đẹp toàn cảnh Mai Châu từ trên cao.\r\n \r\n7.3. Ngắm bình minh ở Mai Châu\r\n \r\nĐặc biệt, ở Mai Châu bạn nhất định phải thức dậy sớm để ngắm bình minh ló rạng sau những dãy núi cao. Đó thực sự là trải nghiệm thú vị và đáng giá cho chuyến đi nghỉ dưỡng, rời xa thành phố ồn ào, náo nhiệt, nơi bạn gần như chẳng thể có cơ hội ngắm nhìn khoảnh khắc tuyệt đẹp chào ngày mới như vậy.\r\n \r\n7.4. Những điểm thăm khác\r\n \r\nNgoài ra, còn rất nhiều điểm du lịch hấp khác cho bạn tham quan khám phá như thác Gò Lào, hồ Ba Khan. Đây là những địa điểm cách Mai Châu khoảng 30km và bạn nên di chuyển bằng ô tô hoặc taxi.\r\n \r\n8. Ăn gì ở Mai Châu?\r\nXem thêm: Ẩm thực dân tộc Thái\r\n \r\nMai Châu là một thung lũng lúa có chất lượng gạo cao hàng đầu miền Bắc. Món ngon mà bạn nhất định phải thử là xôi nếp, thứ đặc sản nổi tiếng trong câu thơ “Mai Châu mùa em thơm nếp xôi” trong bài thơ Tây Tiến của nhà thơ Quang Dũng. Xôi nếp ở đây được nhuộm màu bằng các loại cây cỏ rừng núi thành xôi ngũ sắc nổi tiếng. Trước đây xôi ngũ sắc chỉ được chế biến vào ngày lễ tết hoặc ngày cưới xin, giỗ chạp. Cơm lam cũng là một món ăn khác làm từ gạo Mai Châu. Gạo được nướng trong ống tre sau đó bày bán rất nhiều nơi ở Mai Châu.\r\nVới địa hình nhiều sông suối, người dân Mai Châu ăn nhiều cá suối, cá sông Đà trong bữa ăn của mình. Hầu hết cá đều được chế biến bằng cách nướng như nướng vỉ, nướng vùi trong than hay hấp lá dong.\r\nBà con cũng tăng gia sản xuất các giống lợn mán, gà đồi và chế biến các món ăn như, thịt ướp chua, , gà nướng, thịt lợn bản.\r\nBạn cũng đừng quên thử những món rau củ chấm với chẩm chéo đậm đà bạn nhé.', '/public/img/blog/maichau.jpg', '2023-05-05 16:06:12', 2),
(23, 'DU LỊCH MỘC CHÂU', 'Mộc Châu là điểm đến vô cùng nổi tiếng với những di tích lịch sử như động Sơn Mộc Hương, rừng thông, thác Dải Yếm, núi Phụng Luông,.... Mỗi mùa, bạn sẽ thấy Mộc Châu đều có một điểm thú vị riêng nhưng nhìn chung, khí hậu Mộc Châu quanh năm luôn mát mẻ và là điểm đến tuyệt vời dành cho mọi đôi tượng du khách vào bất kỳ thời điểm nào trong năm. Bạn hãy ghi lại ngay  những điều cơ bản về Mộc Châu nhé! Chắc chắn sẽ rất có ích cho chuyến đi của bạn đến Mộc Châu đấy!\r\n\r\nHang Pê Răng Ky Ở Điện Biên Được Xếp hạng Di Tích Quốc GiaHang Pê Răng Ky Ở Điện Biên Được Xếp hạng Di Tích Quốc Gia\r\nTổng Quan Du Lịch Mộc Châu - Ảnh 1\r\n\r\nMộc Châu có điểm gì đặc biệt\r\nMộc Châu nằm ở phía Đông Nam tỉnh Sơn La, cách Hà Nội khoảng 180 km về phía mảnh đất này . Mộc Châu có diện tích tự nhiên 1.081,66 km vuông, chiếm 7,49% diện tích và đứng thứ 8/12 huyện của tỉnh Sơn La. Mộc Châu có chung đường biên giới giữa Việt Nam và Lào dài 40,6 km.\r\n\r\nNơi đây có bốn mùa rõ rệt, là khí hậu đặc trưng của vùng cao nguyên ôn đới, mát mẻ quanh năm. Nhiệt độ trung bình hàng năm luôn ở mức từ 18 đến 20 độ C, lượng mưa trung bình từ 1.500 đến 1.600 mm và độ ẩm trung bình đạt 85%.\r\n\r\nCao nguyên Mộc Châu rộng lớn với điều kiện thời tiết quanh năm luôn mát mẻ. Nơi đây có vị trí vô cùng thuận lợi cho du khách đi tham quan các tỉnh lân cận khác. Hệ sinh thái ở Mộc Châu vô cùng đa dạng, phong phú đặc biệt là các thảo nguyên có phong cảnh rất đẹp, khí hậu ôn hòa, với rất nhiều các danh lam thắng cảnh như Ngũ Động Bản, thác Yếm, đỉnh Pha Luông, vùng hồ sinh thái rừng, vườn đào, vườn mận, trang trại bò sữa,…\r\n\r\nHiện nay, Mộc Châu là một trong những điểm du lịch hot nhất vùng tây bắc Việt Nam với hàng trăm hàng nghìn lượt khách mỗi năm. Từ Hà Nội bạn có thể đến Mộc Châu bằng ô tô riêng với thời gian di chuyển khoảng 6 - 8 tiếng tùy vào điều kiện thời tiết.\r\n\r\nKhoảng thời gian thích hợp nhất để đến thăm Mộc Châu\r\n+ Từ tháng 1 đến tháng 3 - Mùa hoa đào, hoa mận và lễ hội Hết Chá\r\n\r\nMùa hoa mận trắng đẹp nhất ở Mộc Châu bắt đầu từ cuối tháng Giêng đến đầu tháng Hai. Hoa mận chỉ nở kéo dài trong một thời gian ngắn chỉ khoảng hai hoặc ba tuần trước khi nhường chỗ cho những quả mận đỏ au. Vào thời điểm này, Mộc Châu mang một vẻ đẹp khiến cho du khách ngỡ ngàng với khắp các sườn núi được phủ trắng bởi hoa mận, và các loài hoa cũng vô cùng tuyệt mĩ khác. Hoa mận có thể được nhìn thấy ở khắp mọi nơi, kể cả ở các con đường, từ các ngôi làng đến đồi núi và cả dọc hai bên đường cao tốc. \r\n\r\nSau tháng Hai là thời điểm diễn ra lễ hội Hết Chá vào tháng Ba. Lễ hội Hết Chá là một lễ hội truyền thống của dân tộc Thái - một dân tộc thiểu số ở Mộc Châu. Lễ hội Hết Chá được tổ chức tại Bản Áng, Phường Đông Sang, Huyện Mộc Châu. Lễ hội Hết Chá tổ chức vào cuối mùa hoa Ban và đây cũng là ngày để tưởng nhớ các vị thần bảo vệ làng. Lễ hội Hết Chá thường được tổ chức vào ngày 26 tháng 3 âm lịch. Người dân địa phương chuẩn bị các vật phẩm nghi lễ như lợn, xôi, gà và hoa ban trắng để trang trí trên cây. Trong Lễ hội Hết Chá, mọi người dân ở đây thường  nhảy múa xung quanh đó.\r\n\r\n+ Từ tháng 11 đến tháng 12 - Mùa hoa súp lơ và hoa cúc vạn thọ\r\n\r\nVào khoảng tháng 11, 12, cuối Thu đầu Đông là thời điểm lý tưởng nhất để du khách có chuyến đi du lịch đến Mộc Châu. Vào những tháng này, bạn sẽ có cơ hội được chiêm ngưỡng vẻ đẹp của cao nguyên Mộc Châu được bao phủ bởi màu trắng tinh khiết của hoa cải. Những bông hoa cải trắng nở rộ trên những ngọn đồi xanh mướt, bao la, rộng lớn tạo ra một khung cảnh rất đẹp. Đây là địa điểm lý tưởng để các nhiếp ảnh gia thể hiện tài năng của mình. \r\n\r\nBản Áng và bản Thung Cuông là hai địa điểm thích hợp nhất để săn hoa cải. Đừng quên mang theo máy ảnh để không bỏ lỡ bất kỳ khoảnh khắc đáng nhớ nào tại đây. Tháng 12 là thời điểm Mộc Châu ngập tràn sắc hoa. Hoa cúc vạn thọ ở Mộc Châu được xem như là một tín hiệu của mùa đông đang về trên cao nguyên Mộc Châu. Cúc vạn thọ nở trắng đồi xanh khiến Mộc Châu như khoác lên mình bộ trang phục mới đầy màu sắc.\r\n\r\nNhững điểm đến tuyệt vời ở Mộc Châu\r\nĐồi chè trái tim\r\nMột trong những điểm vô cùng nổi tiếng mà bạn có thể khám phá đó chính là tham quan các đồi chè ở Mộc Châu. Các đồn điền chè có thể được nhìn thấy nếu đến phía Đông của thành phố. Một số đồn điền chè lớn khác có thể được tìm thấy ở các địa điểm cách thành phố khoảng 20 km về phía Bắc. Đây là một vị trí vô cùng thuận lợi để bạn có thể ngắm được đồi chè trái tim. Các đồn điền chè nổi tiếng khác ở Mộc Châu mà bạn có thể được tìm thấy là ở vùng Đài Loan và vùng Tân Lập.\r\n\r\nCánh đồng hoa\r\nNhiều du khách đã quá quen thuộc với hình ảnh ruộng bậc thang ở miền núi nơi này Việt Nam ta nhưng ở Mộc Châu bạn có thể chiêm ngưỡng toàn bộ vẻ đẹp ấy khi Mộc Châu vào mùa hoa cải. Từ cuối tháng 10 đến đầu tháng 11, đầu đông, ở Mộc Châu là thời điểm hoa cải trắng dần nở rộ và khoe sắc. Dường như toàn bộ vùng cao nguyên được bao phủ bởi những thảm hoa cải và một vài loài hoa có nhiều màu sắc sặc sỡ khác, khiến cho Mộc Châu giống như một xứ sở thần tiên. Những địa điểm nổi tiếng nhất mà bạn có thể khám phá và chinh phục tại Mộc Châu chính là bản Ba Phách, bản Thông Cuông và rừng thống ở bản Áng.\r\n\r\nPha Luông\r\nPha Luông là một trong những điểm du lịch nổi bật bậc nhất của Mộc Châu theo cả nghĩa đen lẫn nghĩa bóng. Ngọn núi cao 2000 mét này là nóc nhà của cao nguyên Mộc Châu, Sơn La và là một địa điểm rất được giới trẻ yêu thích lựa chọn làm điểm dừng chân. Đi bộ lên đỉnh Pha Luông là một trong những điều mà bạn nên làm ở vùng này và chắc chắn đây sẽ là một hành trình khám phá tuyệt đẹp. Và điều này rất thích hợp cho tất cả mọi đối tượng du khách có dịp ghé thăm Pha Luông, Mộc Châu. \r\n\r\nTà Xùa\r\nKhu bảo tồn thiên nhiên Tà Xùa là một vùng núi nhỏ ở Sơn La, hầu như địa điểm này không có khách du lịch người nước ngoài, chủ yếu là một số ít du khách Việt Nam – những người yêu thích mạo hiểm. Tà Xùa đặc biệt được biết đến với một hiện tượng đặc biệt xảy ra ở xung quanh các ngọn núi: đó là sự hình thành của những đám mây dày, to, bồng bềnh, mang đến cho bạn cảm giác như đang ở trên thiên đường thực sự. Tà Xùa quả thật là một trong những điểm đến đáng khám phá nhất ở Việt Nam.\r\n\r\nThác Dải Yếm\r\nThác Dải Yếm là một trong những thắng cảnh được rất ít người biết đến ở Mộc Châu. Thác Dải Yếm đẹp nhất, đáng chiêm ngưỡng nhất là từ tháng 4 đến tháng 9 hàng năm. Vào mùa mưa, lượng nước lớn đổ vào con thác này rất lớn khiến cho cảnh quan của Dải Yếm trở nên hùng vĩ, thơ mộng hơn bao giờ hết bởi lúc này thác có màu trắng xóa tuyệt mĩ của bọt nước tạo cho du khách một cảm giác có một không hai khi tới Dải Yếm mùa này. Thác Dải Yếm gồm có hai phần chính, thác phía trên rộng 70m, khoảng cách giữa thác trên và thác dưới là 270m. Thảm thực vật trên đỉnh thác rất phong phú và đẹp mắt. Nơi đây quả thực là một điểm đến có thể chinh phục hoàn toàn những du khách khó tính nhất.\r\n\r\nRừng thông Bản Áng\r\nRừng thông Bản Áng là khu rừng có hồ nước tự nhiên rộng lên đến 5 ha, xung quanh nó là rừng thông xanh ngát. Xa xa là khung cảnh của cao nguyên Mộc Châu với những đồi chè và cánh đồng hoa ban rực rỡ. Bản Áng là nơi sinh sống của người dân tộc Thái, chủ yếu sinh sống bằng nghề làm nông, chăn nuôi và thủ công mỹ nghệ. Khi đến Bản Áng, bạn có cơ hội để khám phá cuộc sống hàng ngày của những người dân trong làng. Tất thảy những điều này đã đủ khiến bạn xách balo lên và chinh phục Bản Áng chưa?\r\n\r\nThác Chiềng Khoa\r\nThác Chiềng Khoa hay còn gọi là thác Mây là một ngọn thác nhỏ, chưa được đưa vào khai thác du lịch nên còn khá hoang sơ và tự nhiên. Khi tới đây, bạn sẽ cảm nhận được toàn bộ vẻ đẹp nguyên sơ ban đầu của nó, sẽ thật tuyệt vời. Đó là lý do tại sao rất nhiều du khách khi tới với Mộc Châu đều lựa chọn Thác Chiềng Khoa để khám phá và chinh phục.\r\n\r\nCác khách sạn và nhà trọ tốt nhất ở Mộc Châu\r\nMộc Châu có hai địa danh chính là Thị trấn Mộc Châu và Thị trấn Nông trường Mộc Châu. Cả hai nơi này đều có một số khách sạn, nhà nghỉ tốt để bạn có thể thoải mái lựa chọn. Nếu đến Mộc Châu vào cuối tuần hoặc các ngày lễ, tốt nhất bạn nên đặt phòng trước để đảm bảo có chỗ ở tốt và giá cả phải chăng. Ngoài ra, nếu bạn muốn tận hưởng những trải nghiệm độc đáo, hãy chọn nghỉ qua đêm tại nhà của những dân bản xứ tại địa phương. Trong thời gian lưu trú tại đây, bạn sẽ có thể tìm hiểu thêm về nét văn hóa độc đáo của địa phương. Ví dụ như Homestay Mộc Châu, Thị trấn Mộc Châu – Homestay, Khách sạn Sao Xanh, Khách sạn Stella Mộc Châu, Mường Thanh Holiday Mộc Châu,…\r\n\r\nĐến Mộc Châu, ăn gì?\r\nMộc Châu không chỉ nổi tiếng bởi những phong cảnh thiên nhiên vô cùng bắt mắt mà còn nổi tiếng bởi những món ăn có một không hai. Đến với Mộc Châu, chắc chắn bạn sẽ không thể bỏ lỡ, chính là Bê Chao, Khoai sọ mán Mộc Châu, Nậm Pịa Tây Bắc, Cá suối Mộc Châu, Cải mèo, Cá hồi Mộc Châu, Xôi ngũ sắc - bánh sắn Mộc Châu, Ốc suối Bàng,… \r\n\r\nĐến Mộc Châu bằng cách nào?\r\nMộc Châu không có sân bay hay nhà ga, vì lý do này mà bạn luôn phải di chuyển bằng đường bộ. Thị trấn nằm cách Hà Nội khoảng chừng 190 km, vì vậy bạn sẽ mất khoảng 4 đến 5 giờ để đi đến nơi. Hàng ngày có một số chuyến xe khởi hành đi Mộc Châu hầu hết xuất phát từ bến xe Mỹ Đình. Tất cả các chuyến xe đi Sơn La, Điện Biên Phủ cũng luôn đi ngang qua Mộc Châu.\r\n\r\nMộc Châu hứa hẹn sẽ là một điểm đến quá đỗi tuyệt vời dành cho mọi đối tượng du khách yêu thích những phong cảnh tuyệt mĩ, những món ăn ngon, những con người dịu dàng, đôn hậu, thật thà. Hy vọng với bài viết này, quý khách sẽ có được những thông tin bổ ích về du lịch Mộc Châu.', '/public/img/blog/mocchau.jpg', '2023-05-05 16:07:43', 2),
(24, 'Gạo Séng Cù', 'Được thiên nhiên ưu đãi về đất, nước, khí hậu phù hợp cho cây lúa sinh trưởng và phá triển, bao đời nay, hạt gạo Séng Cù đã nổi tiếng là loại gạo thơm ngon, có chất lượng cao và mang nhiều giá trị dinh dưỡng.\r\n\r\nHạt gạo Séng Cù\r\n\r\nGạo Séng Cù được đưa vào trồng thử nghiệm tại cánh đồng Mường Lò từ năm 1998. Cùng với giống lúa Hương Chiêm, giống Séng Cù là giống lúa hàng hóa chủ lực chiếm  trên 45% diện tích của Mường Lò, sản lượng đạt  10 nghìn tấn/năm.\r\n\r\nTrải qua quá trình định cư lâu dài tại Mường Lò, người Thái Đen đã biết xây dựng hệ thống thủy lợi, đốt rạ lấy tro tăng độ phì nhiêu cho đất, chọn ủ và làm phân xanh thay cho các loại phân hóa học vừa phát triển được cây lúa đồng thời bảo vệ được nguồn nước, bảo vệ được môi trường và tiếp thu, ứng dụng có hiệu quả các tiến bộ khoa học kỹ thuật trong chăm sóc, thu hoạch và chế biến … đã tạo ra sản phẩm gạo Séng Cù có chất lượng tốt.\r\n\r\n\r\n\r\nVỏ hạt thóc Séng Cù dầy, đầu hạt thường có râu. Gạo Séng Cù trắng ngà, thon, dài trung bình 6,7-7mm, chắc hạt, cứng hơn các loại tẻ thường. Khi nấu thành cơm có mùi thơm nhẹ, hạt cơm dẻo, mềm, để nguội không bị cứng.\r\n\r\nTheo các nhà khoa học, trong thành phần dinh dưỡng của gạo Séng Cù có hàm lượng vitamin B1 cao, cao gấp 4 lần so với gạo tẻ thường. Séng Cù là một trong những loại gạo mang lại giá trị kinh tế cao nhất vùng, giá bán hiện nay gần 30 nghìn đồng/kg.\r\n\r\n\r\n\r\nCơm được nấu từ gạo Séng Cù.\r\n\r\nNgày 22/01/2018, Cục Sở hữu trí tuệ đã ra Quyết định số 264/QĐ-SHTT về việc cấp Giấy chứng nhận đăng ký chỉ dẫn địa lý số 00061 cho sản phẩm gạo “Mường Lò” của cánh đồng Mường Lò, tỉnh Yên Bái.\r\n\r\nHiện nay, gạo Séng Cù được trồng nhiều ở các xã, phường thuộc thị xã Nghĩa Lộ và huyện Văn Chấn như: Phường Trung Tâm, phường Tân An, phường Pú Trạng, phường Cầu Thia, xã Nghĩa An, xã Nghĩa Phúc, xã Nghĩa Lợi, xã Thanh lương, xã Thạch Lương, xã Sơn A, xã Hạnh Sơn, xã Phúc Sơn, xã Phù Nham.\r\n\r\n\r\n\r\nTrong những năm gần đây, gạo Séng Cù đã nhanh chóng trở thành đặc sản của địa phương và đến nay được người tiêu dùng trong và ngoài tỉnh đánh giá cao. ', '/public/img/blog/gaosengcu.jpg', '2023-05-05 16:13:10', 1),
(25, 'Thắng cố món ăn đặc trưng của Tây Bắc', 'Thắng cố món ăn đặc trưng của Tây Bắc', '/public/img/blog/thangco.jpg', '2023-05-05 16:14:40', 1);
INSERT INTO `blogs` (`blog_id`, `blog_title`, `blog_content`, `image`, `posted_at`, `categorieBlog_id`) VALUES
(26, 'Ruộng bậc thang Sapa - Cảnh quan kỳ vĩ của Tây Bắc', 'Ruộng bậc thang Sa Pa là sự phối hợp kết hợp giữa ngẫu nhiên và bàn tay con người đã làm nên quang cảnh tuyệt vời cho ruộng lúa Sapa. Nó đã khiến cho biết bao khách du lịch, biết bao người đồng bằng đến Sa Pa được dịp kinh ngạc, ngỡ ngàng.\r\n\r\nVẻ đẹp của ruộng bậc thang Sapa\r\nCó đôi khi, con người ta cứ mài miệt những ánh đèn sáng rực ở thị thành, các nhộn nhịp, ồn ào của thị thành mà quên đi những nét giản dị, đơn sơ của quê hương như những thửa ruộng, cánh cò, những vách nhà, gian bếp. Và thỉnh thoảng, lúc muốn sống chậm lại, người ta mới chợt hình dong những nơi như thế và địa điểm du lịch Sa Pa là nơi mà nhiều người chọn lọc để sắm về một chốn bình yên ổn trong tâm hồn.\r\n\r\nCó cảnh sắc nơi đâu đẹp bằng Sa Pa, và nơi đâu có thể thấy được sự kỳ vĩ trong khung cảnh bình yên ổn như ruộng bậc thang ở Sa Pa? những người sành sỏi, các nhà nhiếp ảnh luôn chọn Sa Pa mùa lúa chín là thời gian xuất sắc để đến du lịch thành phố này. Vào mùa lúa chín, những bậc thang cứ từng lớp, từng lớp vàng ươm lên tới tận chân mây. Tạo hóa đã khéo léo ban tặng cho đột nhiên Sa pa một cảnh quan mà không hề nơi đâu cũng có.\r\n\r\nThuộc vùng tiểu khí hậu nhiệt đới gió mùa và phải chờ nước mưa đổ xuống (người dân ở đây gọi đó là mùa nước đổ), khu vực vùng cao Lào Cai cũng như một số tỉnh giấc Tây Bắc tới tháng 5, tháng 6 hằng năm mới vào vụ gieo cấy lúa. Đây là thời gian xuất hiện các cảnh đẹp mê đắm của mùa hè trên các cánh đồng ruộng bậc thang lượn vòng quanh những ngọn núi cao của Sa Pa, Bát Xát, Bắc Hà, đắm say Ma Cai.\r\n\r\nruộng bậc thang sapa - cảnh quan kỳ vĩ của tây bắc\r\nCứ như thế, núi rừng Tây Bắc hòa vào cùng với không gian của các triền núi, đồi cỏ, hòa cùng tiếng chim hót rộn vang và các con gió mát lành. thỉnh thoảng tưởng tuồng như những bậc ruộng đang dìu dặt theo mỗi con gió, có lúc lại yên ắng như thể các cây lúa đang ngủ say hay thầm thĩ trò chuyện.\r\n\r\nCái nét hoang vu của địa điểm du lịch Sa Pa hẳn là vì thế mà phát triển thành đẹp và nên thơ tới lạ. Người ta hẳn sẽ phải rủ nhau tới du lịch Sapa nhiều lần nữa để có thể tận mắt ngắm nhìn các ruộng bậc thang, để có thể ấp ủ hết cái nét chấm phá đầy ý vị của tình cờ đấy vào lòng.\r\n\r\nphổ biến du khách trong khi đang chiêm ngưỡng vẻ đẹp kỳ thú của những thửa ruộng bậc thang không khỏi xuýt thoa, ham thích mà thốt lên rằng: vì sao giữa lưng chừng đồi núi mà ruộng lúa lại có thể mọc lên đều tới thế? nhiều người còn nhắc chắc hẳn lúc khai ruộng, người nông dân vùng cao phải hứng khởi lắm nên mới vẽ nên được những thửa ruộng bậc thang đẹp tới kỳ lạ như vậy.\r\n\r\nMọi thửa ruộng bậc thang dù to hay nhỏ đều được chạm khắc trông thật thuận mắt và tiện lợi cho việc canh tác. Có các cánh đồng bậc thang rộng hàng trăm héc ta ở Lao Chải, Tả Van, Tả Phìn… Chúng trông giống như những bức tranh phong cảnh đồ sộ với những tuyến đường nét mềm mại, uốn lượn mà các họa sĩ chân đất họa nên.\r\n\r\ncác thửa ruộng bậc thang hiện hữu bên quốc lộ 4D và đoạn ngược lên Sa Pa thực sự như các bức tranh với muôn vàn kiểu dáng. Ruộng bậc thang ở Sa Pa, Lào Cai là địa điểm du lịch quyến rũ của khách du lịch quốc tế và du khách các tỉnh phương Nam mỗi lúc lên vùng Tây Bắc của Tổ quốc để khám phá vẻ đẹp quê hương mình. các tuyến đường nét, các mảng màu không chủ đích của những nghệ sĩ nông dân Sapa đã hút hồn biết bao du khách tới Sa Pa du lịch.\r\n\r\nLịch sử lâu đời của các bậc thang\r\nHình thức ruộng bậc thang là một hình thức canh tác của nhiều dân tộc đa dạng khác nhau trên toàn cầu. Do ở miền núi và các vùng cao hiếm đất bằng để canh tác, nhất là để trồng lúa nước như vùng đồng bằng châu thổ nên người ta giải quyết bằng cách thức chọn những khuông đồi, núi có đất màu bạt tam cấp để tạo thành những vạt đất bằng. Tiếp đó, tùy vào ý định canh tác mà có thể để khô hoặc dẫn nước từ những đỉnh núi cao hơn về. Đối với nước ta, hình thức canh tác này cũng rất nhiều ở các vùng cao như Tây Bắc, Tây Nguyên hoặc các vùng Trung du ở Bắc bộ…\r\n\r\nruộng bậc thang sapa - cảnh quan kỳ vĩ của tây bắc\r\nTrải qua thời kì và không gian, hầu hết hồ hết những vùng cao Tây Bắc đều có hệ thống thửa ruộng bậc thang phong phú, độc đáo, đa dạng được rộng rãi du khách trong và ngoài nước biết đến, ví dụ như ruộng bậc thang ở Mường Khương, Lao Chải, Tả Van, Tả Phìn, Y Tý, Bắc Hà, Mù Căng Chải, Xi Ma Cai… Dưới con mắt nhà nghề của các nhiếp ảnh gia, họ đã ghi lại được những bức ảnh sinh động của núi rừng Sapa từ rộng rãi góc độ, nhiều khung cảnh khác nhau: những thửa ruộng mùa nước đổ, mùa lúa đang thì con gái, mùa lúa chín…Tất cả đều là những bức tranh đột nhiên hoàn hảo nhất, là những cảnh đẹp cuốn hút nhất.\r\n\r\nRuộng bậc thang ở Sa Pa, Lào Cai có trong khoảng hàng trăm năm nay và nó đều là do các đôi bàn bàn tay tài ba, cần mẫn, chịu khó của người nông dân vùng cao đời này nối tiếp đời kia tạo ra. làm ruộng bậc thang giỏi nhất phải đề cập đến người Hà Nhì, rồi tới người Dao, người Mông, người Giáy, Tày… những dân tộc quanh co năm sống trên các triền núi cao Hoàng Liên Sơn.\r\n\r\nruộng bậc thang sapa - cảnh quan kỳ vĩ của tây bắc\r\ncác cánh đồng bậc thang không chỉ là các cảnh đẹp mà nó còn là các ý trung nhân thóc di động của đồng bào những dân tộc miền núi. Đây là một phương thức canh tác nông nghiệp hiệu quả trên địa hình dốc, núi đồi, góp phần tạo ra sản phẩm du lịch độc đáo cho Lào Cai trong khoảng phổ biến năm nay. Con người đã tận dụng các điều kiện vốn có của bất chợt, tác động vào thiên nhiên để trồng trọt, phân phối và cũng trong khoảng ấy mà tạo nên những cảnh quan trùng hợp vô cùng đặc sắc.\r\n\r\nSau hơn 100 năm xây dựng thương hiệu, giờ đây vẻ đẹp của ruộng bậc thang Sa Pa đã vượt ra khỏi tầm vóc quốc gia và đang trong thời kỳ đi ra với thế giới để trở nên một di sản để đời.\r\n\r\nTiếng tăm của ruộng bậc thang Sapa\r\nSa Pa được xem là một trong 10 địa điểm du lịch nức danh, là điểm đến hấp dẫn những du khách trong và ngoài nước của Việt Nam. Vùng đất Tây Bắc được biết tới với một bề dày lịch sử, với những chàng trai khỏe mạnh, khôi ngô như A Phủ, các cô gái xinh đẹp chuyên nghiệp giang như Mị… bỗng dưng lại ưu ái tặng thưởng cho Sapa vẻ đẹp mà không nơi nào có được.\r\n\r\nruộng bậc thang sapa - cảnh quan kỳ vĩ của tây bắc\r\nRuộng bậc thang là một trong các cảnh quan thú vị nhất khi đi du lịch Sa Pa bởi nó mang vẻ đẹp tự dưng ranh ma với những cánh đồng mấp mô men theo những khuông núi tạo nên bức tranh ngẫu nhiên sinh động giữa vùng trời Tây Bắc. báo chí du lịch Travel and Leisure của Mỹ đã công bố 7 thửa ruộng bậc thang đẹp và kỳ vỹ nhất châu Á và toàn cầu do bạn đọc của báo chí này bình chọn.\r\n\r\ncùng với phổ biến kỳ quan tự nhiên khác trên toàn cầu, ruộng bậc thang cũng được công nhận là các tuyệt tác do thiên nhiên và con người tạo ra, hiện nay trên toàn cầu có bảy ruộng bậc thang cuốn hút nhất thế giới.\r\n\r\nruộng bậc thang sapa - cảnh quan kỳ vĩ của tây bắc\r\nThật vinh hạnh cho Việt Nam khi có một cảnh quan được xếp hạng cao trên thế giới đến như vậy. Về ruộng bậc thang và vùng du lịch nổi danh của Việt Nam – Sa Pa, tin báo Travel and Leisure cũng viết: Với cảnh quan tuyệt vời trông giống như chiếc thang leo lên bầu trời của những thửa ruộng bậc thang, Sa Pa đã trở nên một trong các địa điểm du lịch lôi kéo du khách của Việt Nam.\r\n\r\nAi từng một lần tới với vùng đất Sa Pa du lịch sẽ không khỏi ngỡ ngàng khi được tận mắt chứng kiến những thửa ruộng bậc thang tuyệt đẹp như các nấc thang vươn cao tận lưng trời. Ruộng bậc thang tại địa điểm du lịch Sa Pa mang vẻ đẹp kỳ vĩ, tráng lệ nhưng cũng không kém phần êm ả, thăng bình. Đây luôn là một sản phẩm du lịch độc đáo thu hút du khách trong và ngoài nước đến du lịch Sa Pa thưởng ngoạn. Để biết thêm nhiều địa điểm du lịch nổi tiếng khác ở Việt Nam, mời bạn ghé trang chúng mình để biết thêm nhiều hơn nhé!\r\n', '/public/img/blog/ruongbacthangsapa.jpg', '2023-05-05 16:17:40', 2),
(27, 'Pa pỉnh tộp, món ăn đặc biệt của người Thái ở Tây Bắc', 'Trong các món ẩm thực phong phú của dân tộc Thái phải kể đến món “Pa pỉnh tộp” (tức cá nướng gập nguyên con). Với cách chế biến, gia vị cầu kì hơn so với cá nướng thông thường, “pa pỉnh tộp”  ăn có vị thơm ngon đặc biệt. \r\n\r\nDo tập quán sinh sống của đồng bào Thái thường ở nơi gần sông, suối, ao hồ nên những người đàn ông đánh bắt cá rất giỏi. Vì thế, cá là món ăn quen thuộc của đồng bào Thái vùng Tây Bắc Việt Nam.\r\n\r\n Pa pỉnh tộp, món ăn đặc biệt của người Thái ở Tây Bắc - ảnh 1\r\nPa pỉnh tộp đã ướp xong gia vị. \r\nCá có thể chế biến thành nhiều món khác nhau như: Nướng, rán, hấp, kho, cá chua, cá hun khói (pa giảng), cá gói lá nướng, canh cá, gỏi cá….Tuy nhiên, đây là những món chế biến khá đơn giản. Còn món “pa pỉnh” mới là món được chế biến, cầu kỳ hơn, không chỉ phục vụ bữa cơm hàng ngày, mà còn được làm để người Thái đãi khách quý đến thăm. Chị Tòng Thị Vinh, người Thái ở bản Mòng, xã Hua La, thành phố Sơn La, chuyên phục vụ các món ăn dân tộc, cho biết:\r\n\r\n\"Cá pỉnh tộp thì cá to nhỏ đều làm được, gồm cá chắm, chép, rô, trôi…. Tuy nhiên, cá to cỡ 5 lạng trở lên mới dễ làm và ngon nhất là cá chép nướng. Khi mổ cá, người ta dùng dao sắc nhọn mổ từ sống lưng xuống, xẻ dọc phần trên thân cá từ đầu đến đuôi. Chú ý không mổ đằng bụng cá, không làm đứt miệng cá,vì khi gập cá lại, sẽ nhét đuôi cá ngược lên vào đằng miệng cá để giữ cho gia vị ở phần bụng cá không bị rơi vãi ra bên ngoài.\"\r\n\r\nPa pỉnh tộp cần nhiều thứ gia vị trộn lẫn với nhau sao cho đậm đà, gồm: Rau thơm, hành lá, thì là, rau húng, thái nhỏ, xả, hành củ, gừng, tỏi, ớt tươi được đập dập giã nhỏ, sau đó trộn mắm muối mì chính vừa đủ. Nhưng có một thứ không thể nào thiếu được, đó là “mák khén”. Đây là một loại hạt tiêu rừng, có vị thơm, hăng hăng, cay cay rất đặc trưng chỉ có ở miền núi Tây Bắc, dùng để làm gia vị cho hầu hết các món ăn của đồng bào vùng cao. Việc chọn cá, cho đến cách trộn gia vị ướp cá cũng rất quan trọng.\r\n\r\n Pa pỉnh tộp, món ăn đặc biệt của người Thái ở Tây Bắc - ảnh 2\r\nPa pỉnh tộp đã được nướng chín. \r\nChị Lò Thị Thuỷ, nhân viên nhà hàng Nậm La, thành phố Sơn La, cho biết: \"Tôi làm ở nhà hàng Nậm La được nhiều năm rồi. Các món ăn dân tộc Thái như pa pỉnh tộp, cơm lam, gà nướng đều không thể thiếu được. Khách du lịch đến từ Hà Nội, Hải Phòng, Quảng Ninh…lúc nào cũng phải có đủ các món phục vụ khách ăn. Ngoài ra còn gửi đi tận Hà Nội làm quà, nhất là cá pỉnh tộp, ai được ăn cũng khen ngon. Tuy nhiên, pa pỉnh tộp có nhiều loại cá, phải biết chọn cá nuôi ở ao, cá sông suối tự nhiên thì nướng mới không bở, thịt chắc, ăn mới thơm ngon. \"  \r\n\r\nKhi đã xát ướp đầy đủ gia vị lên toàn thân cá,  phần nhiều gia vị này được trộn lẫn với lòng cá đã làm sạch rồi cho vào trong bụng cá. Sau đó gập ngang thân cá lại, tức là gập làm sao phần đầu và phần đuôi cá chụm lại với nhau. Bà con dùng thanh nứa, que tre tươi chẻ đôi một đầu làm cái kẹp cá và dùng lạt buộc chặt một đầu kẹp lại với nhau, đặt lên nướng trên than củi đỏ rực. Nếu dùng thanh tre, nứa khô để kẹp nướng thì dễ bị cháy, làm gẫy kẹp trong khi cá chưa kịp chín.\r\n\r\nTrong quá trình nướng, cũng phải điều chỉnh lượng than củi ít hay nhiều sao cho hợp lý và xoay lật chiều nướng cho cá chín đều, thơm ngon, nhìn ngoài vàng ươm mà bên trong cũng đủ độ chín kỹ. Pa pỉnh tộp nóng hổi ăn với xôi nếp thì càng hấp dẫn.\r\n\r\nThưởng thức “pa pỉnh tộp” tại nhà hàng Nậm La, thành phố Sơn La, chị Nguyễn Lan Phương, du khách đến từ Hà Nội cho biết:\"Cá Pa pỉnh tộp là một món cá nướng nhưng ở trên này tôi thấy nhiều lắm, cầu kỳ lắm, nhiều gia vị khác nhau. Có rất nhiều yếu tố để hội tụ một món ăn ngon và như cá pỉnh tộp thì tôi thấy hết sức ấn tượng.\"\r\n\r\nTrong các gia đình người Thái, Pa pỉnh tộp là một món đặc sản dân tộc không thể thiếu trong bữa cơm tiếp đãi khách quý đến thăm, thể hiện sự tôn trọng khách của gia chủ. Trong đám cưới đám hỏi cũng vậy, nhà trai sang bên nhà gái ăn hỏi cũng phải có đôi gà luộc, đôi cá nướng để mở đầu câu chuyện. Lúc đi rừng, lên nương, bà con  cũng thường mang theo gói xôi, gói cá nướng để ăn. Hoặc khi đi thăm thân, gia chủ cũng sẽ mang theo gói xôi, gói cá nướng của nhà mình để làm chút quà biếu.\r\n\r\nĐặc biệt mỗi dịp tết đến xuân về, dù nhà giàu hay nhà nghèo, các gia đình người Thái cũng phải có con cá pỉnh tộp để đặt lên bàn thờ tổ tiên, báo với tổ tiên rằng sau một năm vất vả làm ăn, con cháu trong nhà cũng kiếm được gà, cá để dâng lên tổ tiên, mong tổ tiên phù hộ độ trì cho con cháu, một năm mới an khang, thịnh vượng. Pa pỉnh tộp cũng là món ăn rất hấp dẫn khó quên đối với du khách gần xa mỗi dịp lên với miền núi Tây Bắc.', '/public/img/blog/papinhtop.jpg', '2023-05-05 16:19:53', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `canceled_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_products`
--

CREATE TABLE `cart_products` (
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categorieblog`
--

CREATE TABLE `categorieblog` (
  `categorieBlog_id` int(11) NOT NULL,
  `categorieBlog_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categorieblog`
--

INSERT INTO `categorieblog` (`categorieBlog_id`, `categorieBlog_name`) VALUES
(1, 'Đồ Ăn'),
(2, 'Du Lịch'),
(3, 'Thể Thao'),
(4, 'Sức Khỏe'),
(5, 'Xe');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `phone_number` char(20) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `email`, `password`, `phone_number`, `address`) VALUES
(1, 'Mạnh', 'Van', 'minh123@gmail.com', '123', '0914365586', 'Hà Nội'),
(2, 'Nguyen', 'khien', 'khien123@gmail.com', '123', '0363981299', ' Hà Nội'),
(6, 'kah', 'jiug', 'k@gmail.com', '123', '12345', '123rgt'),
(7, 'An', 'Nguyễn', 'an123@gmail.com', '123', '0986543287', 'Long An'),
(8, 'Đào', 'Tâm', 'tam123@gmail.com', '123', '0675647890', 'Đà Nẵng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `name_receiver` varchar(30) NOT NULL,
  `phone_receiver` char(20) NOT NULL,
  `address_receiver` varchar(100) NOT NULL,
  `email_receiver` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `note` text NOT NULL,
  `total_price` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `name_receiver`, `phone_receiver`, `address_receiver`, `email_receiver`, `status`, `note`, `total_price`, `created_at`) VALUES
(6, 2, 'Nguyen khien', '0858901665', ' Hà Nội', 'khien123@gmail.com', 1, '', 215000, '2023-02-10 15:03:56'),
(8, 2, 'Nguyen khien', '0858901665', ' Hà Nội', 'khien123@gmail.com', 1, 'd1', 890000, '2023-02-10 15:03:59'),
(9, 2, 'Nguyen khien', '0858901665', ' Hà Nội', 'khien123@gmail.com', 1, '', 950000, '2023-03-01 14:50:24'),
(10, 2, 'Nguyen khien', '0858901665', ' Hà Nội', 'khien123@gmail.com', 1, '', 500000, '2023-04-04 14:43:40'),
(11, 2, 'Nguyen khien', '0858901665', ' Hà Nội', 'khien123@gmail.com', 1, '', 900000, '2023-04-04 14:43:42'),
(12, 2, 'Nguyen khien', '0858901665', ' Hà Nội', 'khien123@gmail.com', 1, '', 250000, '2023-04-19 14:23:07'),
(13, 2, 'Nguyen khien', '0858901665', ' Hà Nội', 'khien123@gmail.com', 0, '', 900000, '2023-04-09 10:32:11'),
(14, 2, 'Nguyen khien', '0858901665', ' Hà Nội', 'khien123@gmail.com', 0, '', 50000, '2023-04-09 11:16:56'),
(15, 2, 'Nguyen khien', '0858901665', ' Hà Nội', 'khien123@gmail.com', 1, '', 450000, '2023-04-09 13:01:14'),
(16, 2, 'Nguyen khien', '0858901665', ' Hà Nội', 'khien123@gmail.com', 1, '', 450000, '2023-05-05 13:32:37'),
(17, 2, 'Nguyen khien', '0858901665', ' Hà Nội', 'khien123@gmail.com', 1, '', 450000, '2023-05-05 13:32:30'),
(18, 2, 'Nguyen khien', '0858901665', ' Hà Nội', 'khien123@gmail.com', 1, '', 450000, '2023-05-05 13:32:33'),
(19, 2, 'Nguyen khien', '0858901665', ' Hà Nội', 'khien123@gmail.com', 1, '', 250000, '2023-05-05 13:32:38'),
(20, 2, 'Nguyen khien', '0858901665', ' Hà Nội', 'khien123@gmail.com', 1, '', 250000, '2023-05-05 13:32:41'),
(21, 2, 'Nguyen khien', '0858901665', ' Hà Nội', 'khien123@gmail.com', 1, '', 0, '2023-04-25 15:30:13'),
(22, 2, 'Nguyen khien', '0363981299', ' Hà Nội', 'khien123@gmail.com', 0, '', 1070000, '2023-05-05 07:52:47'),
(23, 7, 'An Nguyễn', '0986543287', 'Long An', 'an123@gmail.com', 0, '', 500000, '2023-05-05 16:25:30'),
(24, 8, 'Đào Tâm', '0675647890', 'Đà Nẵng', 'tam123@gmail.com', 0, '', 950000, '2023-05-01 09:07:10'),
(25, 8, 'Đào Tâm', '0675647890', 'Đà Nẵng', 'tam123@gmail.com', 1, '', 0, '2023-05-06 12:45:53'),
(26, 2, 'Nguyen khien', '0363981299', ' Hà Nội', 'khien123@gmail.com', 1, '', 450000, '2023-05-06 07:45:41'),
(27, 2, 'Nguyen khien', '0363981299', ' Hà Nội', 'khien123@gmail.com', 1, '', 450000, '2023-05-06 08:05:44'),
(28, 2, 'Nguyen khien', '0363981299', ' Hà Nội', 'khien123@gmail.com', 1, '', 450000, '2023-05-06 12:45:50'),
(29, 8, 'Đào Tâm', '0675647890', 'Đà Nẵng', 'tam123@gmail.com', 1, '', 700000, '2023-05-06 12:45:54'),
(30, 2, 'Nguyen khien', '0363981299', ' Hà Nội', 'khien123@gmail.com', 1, '', 700000, '2023-05-06 12:45:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_product`
--

CREATE TABLE `orders_product` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders_product`
--

INSERT INTO `orders_product` (`order_id`, `product_id`, `quantity`) VALUES
(6, 11, 1),
(8, 16, 1),
(9, 1, 1),
(10, 3, 2),
(11, 6, 2),
(12, 5, 1),
(13, 6, 2),
(14, 8, 1),
(15, 6, 1),
(16, 6, 1),
(17, 6, 1),
(18, 6, 1),
(19, 3, 1),
(20, 3, 1),
(22, 1, 1),
(22, 10, 2),
(23, 3, 2),
(24, 3, 2),
(24, 6, 1),
(26, 6, 1),
(27, 6, 1),
(28, 6, 1),
(29, 3, 1),
(29, 6, 1),
(30, 5, 1),
(30, 6, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `image` varchar(150) NOT NULL,
  `price` float NOT NULL,
  `description` text NOT NULL,
  `productType_id` int(11) NOT NULL,
  `availability` varchar(30) NOT NULL,
  `information` text NOT NULL,
  `date` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ndate` date DEFAULT NULL,
  `hdbq` varchar(100) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `image`, `price`, `description`, `productType_id`, `availability`, `information`, `date`, `ndate`, `hdbq`) VALUES
(1, 'Thịt trâu gác bếp', '/public/img/product/traugacbep.jpg', 950000, 'Anh chị em chúng tôi tự ngả Trâu và làm thịt gác bếp phục vụ các bác, số lượng hạn chế, chất lượng. Sản phẩm của chúng tôi có thể cắt miếng không đẹp, màu sắc không ấn tượng như sản phẩm sản xuất công nghiệp! Chỉ làm chu đáo số lượng nhỏ, để phục vụ các bác an tâm khi sử dụng, và cam kết 3 điều sau:\r\n\r\nThịt Trâu Tươi,Sạch', 1, 'Còn hàng', 'Thịt Trâu Tươi, sạch,\r\nKhông Sử Dụng Hóa Chất tẩm ướp, bảo quản', '15 ngày từ ngày sản xuất', '2023-04-12', 'Để trong ngăn đông tủ lạnh'),
(3, 'Cá gác bếp', '/public/img/product/cachepgacbep1.jpg', 250000, '“Pa Giảng”, tiếng Thái có nghĩa là Cá Khô, hay dịch nôm na ra là Cá Hun Khói, Cá Gác Bếp…đều được. Vì quy trình chế biến cũng giống như Thịt Trâu Gác Bếp, tức là chúng tôi dùng nhiệt của lửa & than làm khô cá, dùng Mắc Khén, Ớt & Muối để tẩm ướp, làm cho Cá Gác Bếp có mùi vị thơm, ấn tượng đặc trưng của Tây Bắc.\r\n\r\nAnh chị em chúng tôi dùng cá Chép nuôi, các bác xin nhớ giùm là cá nuôi hồ, có sự chăm sóc của con người. Chứ không phải cá sông suối tự nhiên, bởi cá tự nhiên không thể bắt được nhiều và đồng đều về kích thước như cá nuôi được. Cá Chép nhiều thịt, xương dăm ít, thịt khá săn chắc, cho nên khi làm thành phẩm, đẹp mắt, ngon miệng hơn các loại cá suối nhỏ khác.\r\n\r\nGiá bán: 330.000/kg (1 cặp 02 con có thể nặng trên/dưới 1kg, không chính xác 1kg tròn, khi giao hàng cân & tính tiền thực tế theo trọng lượng.\r\nNguyên liệu: Cá Chép tươi, Hạt Mắc Khén, Muối, Ớt\r\nQuy cách đóng gói: 1 cặp (02 con cá) trong túi hút chân không, trọng lượng tùy theo từng cặp, hơn, hoặc kém 1kg/túi. Tính tiền theo trọng lượng thực tế khi giao.\r\nBảo quản: Trong ngăn đá của tủ lạnh, nhiệt độ <0 độ C\r\nCách sử dụng: Làm nóng cá bằng lò Vi Sóng, hoặc nướng qua trên than hoa.', 1, 'Còn hàng', 'Anh chị em chúng tôi dùng cá Chép nuôi, các bác xin nhớ giùm là cá nuôi hồ, có sự chăm sóc của con người. Chứ không phải cá sông suối tự nhiên, bởi cá tự nhiên không thể bắt được nhiều và đồng đều về kích thước như cá nuôi được. Cá Chép nhiều thịt, xương dăm ít, thịt khá săn chắc, cho nên khi làm thành phẩm, đẹp mắt, ngon miệng hơn các loại cá suối nhỏ khác.', '15 ngày từ ngày sản xuất', '2023-04-27', 'Để trong ngăn đông tủ lạnh'),
(4, 'Hạt mắc khén', '/public/img/product/hatmackhen1.jpg', 350000, 'Mắc Khén là gia vị được coi là linh hồn của ẩm thực Tây Bắc, bởi mùi thơm không thể lẫn với bất cứ loại gia vị nào khác. Nếu Hạt Tiêu chỉ hơi thơm thơm thì Mắc Khén lại có mùi thơm nồng nàn của núi rừng! Nhưng lại không cay như ớt, mà Mắc Khén tạo ra vị tê rần rần nơi đầu lưỡi khi nếm thử! Dùng Mắc Khén để tẩm ướp để nướng cá, nướng thịt, hoặc pha đồ chấm mà có Mắc Khén thì mùi vị độc đáo, thơm ngon & hấp dẫn vô cùng.\r\n\r\nSử dụng Mắc Khén hàng ngày trong thực đơn của gia đình, hoặc các anh chị là chủ cơ sở kinh doanh ăn uống, muốn tạo cho món ăn của cửa hàng mình có mùi vị độc đáo, lạ miệng, thu hút khách hàng. Hãy sử dụng thêm Mắc Khén! Tôi đã tư vấn kinh doanh cho rất nhiều địa điểm chuyên doanh đồ Nướng, quán nhậu sử dụng thêm Mắc Khén và Hạt Dổi đều đạt được hiệu quả kinh doanh tốt hơn nhiều khi khách hàng khen ngợi “món này có mùi vị đặc biệt, rất hấp dẫn”.', 2, 'Còn hàng', 'Mắc Khén là gia vị được coi là linh hồn của ẩm thực Tây Bắc, bởi mùi thơm không thể lẫn với bất cứ loại gia vị nào khác. Nếu Hạt Tiêu chỉ hơi thơm thơm thì Mắc Khén lại có mùi thơm nồng nàn của núi rừng! Nhưng lại không cay như ớt, mà Mắc Khén tạo ra vị tê rần rần nơi đầu lưỡi khi nếm thử!', '3 tháng từ ngày sản xuất', '2023-04-05', 'Để nơi thoáng mát tránh ánh nắng mặt trời'),
(5, 'Hạt dổi rừng', '/public/img/product/hatdoirung1.jpg', 250000, 'Hạt Dổi, cùng với hạt Mắc Khén là 1 trong 2 loại gia vị đặc trưng bậc nhất của ẩm thực Tây Bắc chúng tôi! Hạt Dổi có mùi thơm đặc trưng, nói thật là khó tả lắm. Sản phẩm được đóng gói hũ thủy tinh 100gram\r\n\r\nHạt Dổi, cùng với hạt Mắc Khén là 1 trong 2 loại gia vị đặc trưng bậc nhất của ẩm thực Tây Bắc chúng tôi! Hạt Dổi có mùi thơm đặc trưng, nói thật là khó tả lắm. Xưa nay đồng bào Thái ở Tây Bắc sử dụng hạt Dổi làm gia vị chấm, và gia vị ướp các món ăn cổ truyền như thịt Bò/Trâu/Lợn khô, hoặc các món như Lạp Xưởng! Ngoài ra có khá nhiều món cực kì hợp với Hạt Dổi, ví như món canh Măng Pửng (Dùng đọt non của Măng Giang, cắt khúc, ngâm nước tro nhạt trong vòng 3 ngày rồi đem nấu với xương Bò). Hạt Dổi khi phơi khô đã có mùi thơm quyến rũ rồi, nhưng phải nướng lên (chả ai Rang hạt Dổi cả), nướng trên than hồng nhanh tay, hạt Dổi Rừng xịn sẽ nở căng ra, mùi thơm bốc lên ngào ngạt! Rồi mới đem giã nhỏ ra để sử dụng.\r\n', 2, 'Còn hàng', 'Hạt Dổi, cùng với hạt Mắc Khén là 1 trong 2 loại gia vị đặc trưng bậc nhất của ẩm thực Tây Bắc chúng tôi! Hạt Dổi có mùi thơm đặc trưng, nói thật là khó tả lắm. Xưa nay đồng bào Thái ở Tây Bắc sử dụng hạt Dổi làm gia vị chấm, và gia vị ướp các món ăn cổ truyền như thịt Bò/Trâu/Lợn khô, hoặc các món như Lạp Xưởng! Ngoài ra có khá nhiều món cực kì hợp với Hạt Dổi', '3 tháng từ ngày sản xuất', '2023-04-01', 'Để nơi thoáng mát tránh ánh nắng mặt trời'),
(6, 'Thịt gà gác bếp', '/public/img/product/thitgagacbep1.jpg', 450000, 'Gà ngon, sạch, tẩm ướp gia vị truyền thống và được chúng tôi gác bếp để gửi tới Quý Anh Chị khách hàng, bạn hữu gần xa.\r\n\r\nGiá bán: 420.000/kg (1 con có thể nặng trên/dưới 1kg, không chính xác 1kg tròn, khi giao hàng cân & tính tiền thực tế theo trọng lượng)\r\nTặng kèm 01 gói gia vị Mắc Khén & Hạt Dổi đã rang xay nhỏ để Quý Anh Chị pha đồ chấm\r\n\r\n', 1, 'Còn hàng', 'Gà ngon, sạch, tẩm ướp gia vị truyền thống và được chúng tôi gác bếp để gửi tới Quý Anh Chị khách hàng, bạn hữu gần xa.', '15 ngày từ ngày sản xuất', '2023-04-01', 'Để trong ngăn đông tủ lạnh'),
(8, 'Tương ớt Mường Khương', '/public/img/product/tuongotmuongkhuong1.jpg', 50000, 'TƯƠNG ỚT MƯỜNG KHƯƠNG CHÍNH GỐC - ĐẬM ĐẶC, CHUẨN VỊ\r\nCHỈ 50K/ 500ml\r\n \r\nNguyên liệu là ớt Mường Khương, tuy nhiên ớt ở Mường Khương không hề giống như ớt ở miền xuôi. Những quả ớt Mường Khương rất cay nhưng kích thước lại rất bé nên nó còn gọi là ớt thóc có hương vị vô cùng nồng đậm mà chẳng loại ớt nào có được.\r\nTương ớt phải được ủ trong vòng 2 tháng liên tục để có độ ngấu cũng như hương thơm dịu dịu, chua chua đặc trưng. Trong thời gian ủ tương ớt phải liên tục được đảo để tránh bị lên men. Sau khi hoàn thành 2 tháng ẩn dật trong những thùng gỗ sồi những chai tương ớt được ra lò, vậy mới biết để tạo ra một chai tương ớt thật sự không hề dễ dàng.\r\nKhi dùng tương ớt Mường Khương sẽ cảm nhận được vị cay nồng lại thoang thoảng cả mùi thảo dược, mùi núi rừng trong đó làm cho những món ăn đó như ngon thêm một nấc.\r\nCác bác có thể dùng tương ớt Mường Khương cho những món đồ luộc, đồ nướng hay làm gia vị cho những món phở, nhất là chấm với những món gác bếp của dân bản vùng cao thì không gì tuyệt hơn.\r\n Quy cách đóng gói: 1 chai 500 ml', 2, 'Còn hàng', 'Nguyên liệu là ớt Mường Khương, tuy nhiên ớt ở Mường Khương không hề giống như ớt ở miền xuôi. Những quả ớt Mường Khương rất cay nhưng kích thước lại rất bé nên nó còn gọi là ớt thóc có hương vị vô cùng nồng đậm mà chẳng loại ớt nào có được.\r\nCác bác có thể dùng tương ớt Mường Khương cho những món đồ luộc, đồ nướng hay làm gia vị cho những món phở, nhất là chấm với những món gác bếp của dân bản vùng cao thì không gì tuyệt hơn.', '3 tháng từ ngày sản xuất', '2023-04-05', 'Để nơi thoáng mát tránh ánh nắng mặt trời'),
(9, 'Mộc nhĩ Tuyên Quang', '/public/img/product/mocnhituyenquang.jpg', 30000, 'Thực phẩm BESE FOOD cung cấp :\r\n\r\nMỘC NHĨ  -  ĐẶC SẢN TUYÊN QUANG ( Hàng Loại 1 )\r\n\r\nMộc nhĩ( nấm mèo): Được người dân Tuyên Quang thu gom trực tiếp từ những cây gỗ mục trên cánh rừng tự  nhiên về phơi nắng khô đảm bảo an toàn thực phẩm , không chất bảo quản , không chất kích thích.\r\n\r\nCách sử dụng: ngâm trong nước lạnh hoặc nước nóng khoảng 15-30p. Sau đó cắt chân rửa sạch. Xào, nấu hoặc nấu để uống nước tùy theo món.\r\n\r\nTác dụng: mộc nhĩ ngoài việc giúp cho món ăn ngon hơn còn giúp cho quá trình giảm mỡ máu\r\n\r\n Quy cách đóng gói: Đóng túi zip từ 100gr, 250gr, 500gr, 1 kg\r\n\r\nBảo quản: nơi khô ráo thoáng mát, tránh ánh nắng trực tiếp.', 3, 'Còn hàng', 'MỘC NHĨ  -  ĐẶC SẢN TUYÊN QUANG ( Hàng Loại 1 )\r\nMộc nhĩ( nấm mèo): Được người dân Tuyên Quang thu gom trực tiếp từ những cây gỗ mục trên cánh rừng tự  nhiên về phơi nắng khô đảm bảo an toàn thực phẩm , không chất bảo quản , không chất kích thích.\r\n', '3 tháng từ ngày sản xuất', '2023-04-06', 'Để nơi thoáng mát tránh ánh nắng mặt trời'),
(10, 'Miến Phia Đén Cao Bằng', '/public/img/product/miencaobang.jpg', 60000, 'Thực phẩm BESE FOOD cung cấp :\r\n\r\nMiến Phia Đén Cao Bằng: nguyên chất 100% từ củ dong riềng, được làm thu công bằng tay, sợi miến trong, dai dai, ăn không bị ngán, êm bụng.\r\n\r\nSử dụng: Miến ngâm nước lạnh 2 - 3 phút vớt ra . Để ráo nước sau đó có thể nấu xào hoặc chế biến tùy ý.\r\n\r\nHướng dẫn bảo quản: Bảo quản nơi khô ráo, thoáng mát, sạch sẽ.', 3, 'Còn hàng', 'Miến Phia Đén Cao Bằng: nguyên chất 100% từ củ dong riềng, được làm thu công bằng tay, sợi miến trong, dai dai, ăn không bị ngán, êm bụng.', '3 tháng từ ngày sản xuất', '2023-04-01', 'Để trong ngăn mát tủ lạnh'),
(11, 'Măng nứa khô', '/public/img/product/mangnuakho.jpg', 215000, 'Măng nứa khô có rất nhiều nguồn gốc xuất xứ khác nhau, ví dụ măng khô nứa Tuyên Quang, măng nứa khô Yên Bái, măng khô Điện Biên…\r\n\r\nTùy mỗi vùng miền khác nhau, người dân sẽ có cách trồng và cho ra sản phẩm với những mùi vị đặc trưng. Nhìn chung, măng nứa khô ở vùng Tây Bắc vẫn là loại măng dẫn đầu số lượng và chất lượng măng nứa trên thị trường hiện nay.\r\n\r\nMăng nứa, hay măng nứa khô là tên gọi dân dã chỉ loại măng được bà con dân tộc đi hái từ các mầm măng non của cây nứa. Có xuất xứ từ núi rừng Tây Bắc là chủ yếu. Măng chính là mầm non của tre nứa…,nó có nhiều tên gọi khác nhau “Duẩn, mao duẩn, trúc duẩn, và trúc nha…”', 3, 'Còn hàng', 'Đây là sản phẩm mới nhất của chúng tôi, rất mong nhận được sự ủng hộ của Quý Anh Chị gần xa. Măng Nứa rừng 100%, mềm, nhỏ hơn Măng Tre Rừng. Chúng tôi khai thác, chế biến hoàn toàn thủ công, không hóa chất bảo quản! Măng Nứa khô phù hợp cho các món Canh, hoặc xào!', '3 tháng từ ngày sản xuất', '2023-04-02', 'Để trong ngăn mát tủ lạnh'),
(13, 'Muối Chẳm Chéo', '/public/img/product/chamcheo.jpg', 50000, 'Muối Chẳm Chéo Tây Bắc - “linh hồn” trong những bữa ăn của người Tây Bắc, chấm món gì cũng ngon.\r\n\r\nNguyên liệu chính của muối chẩm chéo bao gồm hơn 10 loại gia vị khác nhau, có thể kể đến như: muối, ớt, tỏi, mì chính, Mak Khén (hạt tiêu rừng), Thảo quả... Bởi vậy muối chẩm chéo luôn có những đặc điểm về hương vị chung như: vị thơm của lá, chút cảm giác cay cay của ớt và mùi thơm hăng nồng của Mak Khén dùng để chấm xôi, các món luộc, đồ nướng hay các loại quả chua như nhót, mận, xoài, ...\r\n Quy cách đóng gói: 1 lọ nhựa nắp nhôm bạc trọng lượng 150gr\r\nBảo quản: nơi khô ráo thoáng mát, tránh ánh nắng trực tiếp.', 2, 'Còn hàng', 'Muối Chẳm Chéo Tây Bắc - “linh hồn” trong những bữa ăn của người Tây Bắc, chấm món gì cũng ngon.', '3 tháng từ ngày sản xuất', '2023-04-08', 'Để nơi thoáng mát tránh ánh nắng mặt trời'),
(14, 'Thịt bò gác bếp', '/public/img/product/thitbogacbep1.jpg', 550000, 'Thịt Bò Gác Bếp là sản phẩm thứ 3 trong danh mục “THỊT, CÁ GÁC BẾP” của HOA BAN FOOD™, Bò được chăn thả tự nhiên, ăn cỏ 100%, không nuôi nhốt, không vỗ béo, không dịch bệnh. Chất lượng sản phẩm được kiểm soát chặt chẽ & khép kín từ khâu lựa chọn Bò, chế biến, đóng gói & giao hàng tận tay các bác.\r\n\r\nQuy cách đóng gói: Túi 1kg – Hút chân không', 1, 'Còn hàng', 'Thịt Bò Gác Bếp là sản phẩm thứ 3 trong danh mục “THỊT, CÁ GÁC BẾP” của HOA BAN FOOD™, Bò được chăn thả tự nhiên, ăn cỏ 100%, không nuôi nhốt, không vỗ béo, không dịch bệnh. Chất lượng sản phẩm được kiểm soát chặt chẽ & khép kín từ khâu lựa chọn Bò, chế biến, đóng gói & giao hàng tận tay các bác.', '15 ngày từ ngày sản xuất', '2023-04-17', 'Để trong ngăn mát tủ lạnh'),
(15, 'Rượu sâu chít', '/public/img/product/ruousauchit.jpg', 400000, 'Sâu Chít là đặc sản, vị thuốc Đông Y quý hiếm từ thiên nhiên ban tặng riêng cho vùng đất Lai Châu & Điện Biên. Sâu Chít có hàm lượng protein chiếm 25-32% trong cơ thể, trong đó có 17/20 loại Axit Amin cần cho cơ thể. Sâu Chít là vị thuốc tăng cường sinh lực không chỉ dành cho cánh đàn ông mà còn giúp cải thiện da và sức khoẻ phụ nữ, cho những người thể trạng yếu. Rượu Sâu Chít đặc biệt công hiệu với Nam Giới! Tăng cường đời sống hôn nhân, ích tinh và bồi bổ cơ thể đối với những người có thể trạng yếu, mệt mỏi, gầy yếu!', 6, 'Còn hàng', 'Sâu Chít là đặc sản, vị thuốc Đông Y quý hiếm từ thiên nhiên ban tặng riêng cho vùng đất Lai Châu & Điện Biên. Sâu Chít có hàm lượng protein chiếm 25-32% trong cơ thể, trong đó có 17/20 loại Axit Amin cần cho cơ thể.', '2 năm từ ngày sản xuất', '2023-04-07', 'Để nơi thoáng mát tránh ánh nắng mặt trời'),
(16, 'Rượu củ tam thất', '/public/img/product/ruoucutamthat.jpg', 890000, 'Rượu ngâm Tam Thất tươi, bổ dưỡng, sang trọng để biếu khách quý hoặc trưng bày trong tủ rượu.\r\nNGUYÊN LIỆU NGÂM\r\nChúng tôi chỉ dùng Củ Tam Thất tươi, có nhiều rễ phụ, hình thức đẹp! Rửa sạch kĩ lưỡng, sau đó ngâm với Rượu Nếp 40 độ cồn. Sau 03 tháng trở lên, rượu chuyển màu vàng tươi rất đẹp mắt\r\nCÔNG DỤNG CỦA RƯỢU TAM THẤT\r\nTốt cho hệ thần kinh, tốt cho một giấc ngủ sâu và ngon\r\nHỗ trợ chưa cao huyết áp ở người già\r\nChống viêm, giảm đau nhức xương khớp\r\nTăng cường tuần hoàn máu\r\n', 6, 'Còn hàng', 'Rượu ngâm Tam Thất tươi, bổ dưỡng, sang trọng để biếu khách quý hoặc trưng bày trong tủ rượu.', '2 năm từ ngày sản xuất', '2023-04-08', 'Để nơi thoáng mát tránh ánh nắng mặt trời'),
(17, 'Rượu táo mèo', '/public/img/product/ruoutaomeo.jpg', 550000, 'Rượu Táo Mèo, đóng gói bình 5 Lít. Rượu có màu vàng đẹp, vị thơm dịu, chua nhẹ rất dễ uống. Vừa là rượu khai vị, hoặc đơn giản uống 1 ly nhỏ trong bữa cơm giúp tiêu hóa tốt hơn, vì Táo Mèo (hay còn gọi là Quả Sơn Tra) có công dụng kích thích tiêu hóa rất tốt.\r\nChúng tôi cung cấp Táo Mèo Khô để các bác về tự ngâm rượu. Tuy nhiên nhiều bác ngại ngâm, hoặc không kịp thời gian ngâm! Chúng tôi phục vụ, ngâm sẵn Rượu Táo Mèo (Xin lưu ý chúng tôi ngâm Táo Mèo Khô thái lát, chứ không ngâm quả tươi) dạng bình 5 Lít để các bác có thể sử dụng được ngay sau khi nhận hàng. ', 6, 'Còn hàng', 'Rượu Táo Mèo, đóng gói bình 5 Lít. Rượu có màu vàng đẹp, vị thơm dịu, chua nhẹ rất dễ uống. Vừa là rượu khai vị, hoặc đơn giản uống 1 ly nhỏ trong bữa cơm giúp tiêu hóa tốt hơn, vì Táo Mèo (hay còn gọi là Quả Sơn Tra) có công dụng kích thích tiêu hóa rất tốt.', '2 năm từ ngày sản xuất', '2023-04-07', 'Để nơi thoáng mát tránh ánh nắng mặt trời'),
(18, 'Chuối hột rừng', '/public/img/product/chuoihotrung.jpg', 140000, 'CÁCH NGÂM RƯỢU CHUỐI HỘT RỪNG\r\nSử dụng rượu Nếp có độ cồn từ 38 đến dưới 45 độ.\r\nChuối Xanh – Thái Miếng: 1kg ngâm bình 10L\r\nChuối Chín – Nguyên Quả: 1kg ngâm bình 5L\r\nQuả La Hán: Rửa sạch vỏ, đập vỡ, cho vào bình\r\nSau 03 tháng rượu có vị ngọt thơm, màu nâu sậm là sử dụng được!', 7, 'Còn hàng', 'Chuối Hột Rừng tự nhiên 100%. Do anh chị em chúng tôi khai thác & chế biến đảm bảo chất lượng nhất, ngâm rượu thơm ngon, an toàn để sử dụng hàng ngày.\r\n', '1 năm từ ngày sản xuất', '2023-04-17', 'Để trong ngăn mát tủ lạnh'),
(19, 'Táo mèo khô', '/public/img/product/taomeokho.jpg', 90000, 'CÁCH NGÂM RƯỢU\r\n01 túi 650gram Táo Mèo Khô ngâm cho bình 5L rượu\r\nSử dụng Rượu Nếp từ 38 đến 45 độ là phù hợp nhất\r\nNgâm từ 4 đến 6 tháng là sử dụng được', 7, 'Còn hàng', 'Táo Mèo, hay còn gọi là quả Sơn Tra theo Đông Y, ngâm rượu có vị chua thanh, ngọt hậu, thơm và rất dễ uống. Trong khi uống, cảm giác ngon miệng, tuy nhiên, Rượu Táo Mèo rất nhanh say sau khi uống. Vì thế, xin vui lòng uống ở mức độ vừa phải tùy vào khả năng của mỗi người! Xin đừng ép rượu\r\n', '1 năm từ ngày sản xuất', '2023-04-15', 'Để nơi thoáng mát tránh ánh nắng mặt trời'),
(20, 'Sâu chít khô', '/public/img/product/sauchitkho1.jpg', 490000, 'Ngoài cách sử dụng phổ biến nhất là ngâm rượu uống, Sâu Chít còn dùng để sao khô, nấu cháo. Số liệu khảo cứu cho thấy loài “đông trùng hạ thảo” có hàm lượng protein chiếm 25-32% trong cơ thể, trong đó có 6 axit amin, còn sâu chít cũng có hàm lượng protein tương đương nhưng thành phần axit amin được xác định lên đến 17/20 loại cần cho cơ thể.\r\n\r\n+ SÂU CHÍT KHÔ NGÂM RƯỢU\r\n\r\nThực tế, Sâu Chít khô ngâm rượu không ngon và bổ dưỡng bằng dùng Sâu Chít tươi (Chúng tôi từ trước tới giờ chỉ ngâm rượu Sâu Chít tươi)! Tuy nhiên Sâu tươi không có quanh năm, nên nhiều anh chị vẫn thích tự ngâm bằng Sâu Khô.\r\nCách ngâm: Dùng 100gram Sâu Chít khô ngâm với 1.5L rượu (nên sử dụng rượu nếp, có độ cồn từ 35 đến 40 độ). Ngâm tối thiểu 4 tháng rồi sử dụng!', 7, 'Còn hàng', 'CÔNG DỤNG & HƯỚNG DẪN SỬ DỤNG SÂU CHÍT KHÔ\r\nSâu Chít khô rất phù hợp cho những người bị huyết áp cao, không sử dụng được rượu! Hoặc dành cho phụ nữ, trẻ nhỏ, người già để bồi bổ cơ thể. Sâu Chít khô giòn, ăn có vị bùi, ngậy, rất thơm ngon & bổ dưỡng.', '4 tháng từ ngày sản xuất', '2023-04-14', 'Để trong ngăn đông tủ lạnh'),
(21, 'Củ ba kích khô', '/public/img/product/bakichkho.jpg', 370000, 'CÁCH NGÂM & SỬ DỤNG RƯỢU BA KÍCH KHÔ\r\nNhiều bác sẽ hỏi, ngâm Ba Kích Tươi hay Khô tốt hơn! Để trả lời là tốt hơn thì rất khó để đo lường, tuy nhiên Ba Kích Khô ngâm rượu sẽ ngon hơn, rượu ngọt hơn, không bị mùi ngai ngái của Củ tươi lẫn vào vị rượu.\r\nNgâm 01 túi 300gram trong bình 5L Rượu Nếp (Độ cồn phù hợp từ 38 đến 45%), bảo quản nơi râm mát, tránh ánh sáng trực tiếp! Sau 06 tháng sử dụng là tốt nhất.\r\nSử dụng mỗi ngày tối đa 40ml (tương đương 2 chén/ly nhỏ), uống trong bữa tối để đạt kết quả tốt nhất!\r\nKhông nên sử dụng liên tục quá 3 tuần/đợt, uống xong 1 đợt, nghỉ 1 đợt rồi hãy sử dụng tiếp', 7, 'Còn hàng', 'Củ Ba Kích Tím tươi, đã loại bỏ phần lõi chứa chất gây hại, sau đó sấy khô bằng Máy Sấy Dược Liệu chuyên dụng để giữ được các thành phần Dược Tính tốt nhất, đảm bảo vệ sinh, không hóa chất bảo quản. Túi 300gram ngâm bình 5L rượu\r\n', '1 năm từ ngày sản xuất', '2023-04-15', 'Để trong ngăn mát tủ lạnh'),
(22, 'Trà Đuôi Rồng Tía', '/public/img/product/traduoirongtia.jpg', 250000, 'Đuôi rồng tía là một loại trà được thu hái từ những cây hoang dã hàng trăm tuổi thuộc họ trà trên độ cao 1500-2200m so với mặt nước biển. Nó phân bố chủ yếu trên những đỉnh núi cao phía bắc như Chiêu Lầu Thi, Khuổi My – Hà Giang Việt Nam. Ngoài ra hiện nó cũng phân bố trên những vùng núi cao giáp biên giới Việt Nam như Vân Nam Trung Quốc hay vùng Ailao shan… Nó được quy vào tên khoa học là Camellia Crassicolumma. Hiện nay vẫn còn nhiều tranh cãi rằng đây có phải trà không hay chỉ là một loại thảo mộc nhưng dù sao thì với những đặc tính đặc biệt như hương vị cũng như hình thức độc đáo của nó đã đang và rất được ưa chuộng là một đặc sản trà quý hiếm trên thế giới. Việt Nam ta rất may mắn khi được thiên nhiên ưu đãi sản vật này.\r\n\r\n\r\nChồi non có màu nâu vàng, có các ánh nhỏ chĩa ra như vẩy đuôi rồng, trà pha ra có màu ánh vàng sóng sánh như nắng, hương thơm như hoa hồng khá mạnh mẽ, đậm chất hoang dã nhưng lại có vị thanh ngọt tinh khiết của dòng trà núi. Đây thực sự là một trải nghiệm về hương vị vô cùng thú vị cho những người mê trà.', 8, 'Còn hàng', 'Trà Đuôi Rồng Tía ( Trà Shan Tuyết )', '2 tháng từ ngày sản xuất', '2023-04-14', 'Để nơi thoáng mát tránh ánh nắng mặt trời'),
(23, 'Trà Bạch Tiên', '/public/img/product/trabachtien.jpg', 280000, 'ĐÔI NÉT VỀ TRÀ BẠCH TIÊN\r\nTrà Bạch Tiên ( Trà Shan Tuyết ): Một giống trà chỉ có duy nhất tại Hoàng Su Phì. Tại Việt Nam chưa có nơi nào có. Được hái từ những cây chè cổ thụ hàng trăm năm tuổi, hương nhẹ tựa cỏ hoa, vị mát thanh tựa suối nguồn.\r\n\r\nHàng năm, cứ mỗi độ xuân về, những cây chè bắt đầu đâm chồi, nảy lộc, cũng là lúc người dân hái những chồi non này về để chế biến trà. Bạch trà có bốn loại gồm: trà mẫu đơn, mi vạn thọ, bạch kim và trà triều cống. \r\n\r\nTrà Tiên – búp trà có lông tơ màu trắng, hương thơm thanh dịu, cảm giác như ngửi mùi hương đã nhận được vị ngọt của trà, vị thanh đặc biệt, là hàng cực phẩm.\r\n\r\nĐể có 1kg Bạch trà tiên, người làm phải hái chồi non từ những cây chè cổ thụ hàng trăm thậm chí cả nghìn năm tuổi trên đỉnh núi Hoàng Liên Sơn.\r\n\r\nQuy cách đóng gói: Trà được đóng trong túi Zip Giấy Kraft Nâu có cửa sổ.', 8, 'Còn hàng', 'Trà Bạch Tiên ( Trà Shan Tuyết )\r\n', '2 tháng từ ngày sản xuất', '2023-04-12', 'Để nơi thoáng mát tránh ánh nắng mặt trời'),
(24, 'Trà hoa rừng', '/public/img/product/trahaorung.jpg', 80000, 'ĐÔI NÉT VỀ TRÀ HOA RỪNG\r\n- Tên gọi khác của trà hoa vàng là chè hoa vàng hay trà rừng hoặc kim hoa ...\r\n- Trà hoa vàng trong thời phong kiến là loại trà thượng hạng, chỉ các bậc vua chúa dùng. Trà hoa vàng trong, có màu vàng nhạt, rất hấp dẫn. Trà hoa vàng khi uống có mùi thơm của dược liệu, rất dễ chịu cùng vị ngòn ngọt và đắng dịu để lại nơi đầu lưỡi.\r\n \r\nQuy cách đóng gói: Trà được đóng trong túi Zip Giấy Kraft Nâu có cửa sổ', 8, 'Còn hàng', 'Trà Hoà Rừng ((Trà Hoa Vàng )\r\n', '2 tháng từ ngày sản xuất', '2023-04-16', 'Để nơi thoáng mát tránh ánh nắng mặt trời'),
(25, 'Trà xanh vị xuyên', '/public/img/product/traxanhvixuyen.jpg', 110000, '- Nguồn gốc: Vị Xuyên - Hà Giang\r\n- Thành phần trà nguyên liệu: Trà Vị Xuyên ( hay được gọi là Trà một búp 2-3 lá )\r\n- Cánh trà có dải trắng chạy dọc theo lá trà ( đây là dải lông nhũ đặc trưng của dòng Trà shan tuyết).\r\n- Chè Shan Tuyết nước không xanh, không có chất tạo màu, mà nước chè Shan Tuyết có màu vàng như mật ong và cả một chút “tuyết” của lá trà trôi bồng bềnh trên mặt nước. Nhấp một chén trà đưa lên miệng sẽ cảm nhận được hương thơm dìu dịu rồi đến vị hơi đắng nơi đầu lưỡi. Nhưng vị ngọt thanh ngay sau đó sẽ lan tỏa khắp khoang miệng.\r\n- Quy cách đóng gói: Trà được đóng trong túi Zip Giấy Kraft Nâu có cửa sổ', 8, 'Còn hàng', 'Trà Vị Xuyên  ( Trà Xanh 1 Búp  2-3 lá ) - Trà Shan Tuyết Cổ Thụ Hà Giang\r\n', '2 tháng từ ngày sản xuất', '2023-04-12', 'Để nơi thoáng mát tránh ánh nắng mặt trời'),
(26, 'Set Quà 01_Măng Nứa Tép Khô & Nấm Hương Rừng', '/public/img/product/setqua01.jpg', 180000, 'COMBO ĐẬM ĐÀ BẢN SẮC\r\n \r\nTiên phong chọn một lối đi riêng, Tết này Bese Food gửi tới Quý khách hàng những set quà quê biếu tặng Tết đầy ý nghĩa, quy tụ những sản vật quê hương của núi rừng Tây Bắc, tốt cho sức khoẻ gói ghém trọn vị Tết!\r\nSet Quà Tết gồm:\r\n\r\n100gr Măng nứa tép khô\r\n\r\n100gr Nấm hương rừng\r\n\r\nCombo full set đựng quà : Hộp quà kèm túi xách sang trọng', 9, 'Còn hàng', '', '15 ngày từ ngày sản xuất', '2023-04-14', 'Để nơi thoáng mát tránh ánh nắng mặt trời'),
(27, 'Set Quà 02_Thịt Trâu Gác Bếp 05 & Chẳm Chéo & Hạt ', '/public/img/product/setqua02.jpg', 640000, 'QUÀ TẾT ĐẬM ĐÀ BẢN SẮC VIỆT CÓ TẠI BESE FOOD\r\n \r\nTiên phong chọn một lối đi riêng, Tết này Bese Food gửi tới Quý khách hàng những set quà quê biếu tặng Tết đầy ý nghĩa, quy tụ những sản vật quê hương của núi rừng Tây Bắc, tốt cho sức khoẻ gói ghém trọn vị Tết!\r\nSet Quà Tết 02 gồm:\r\n\r\nThịt trâu gác bếp 0,5 Kg \r\n\r\n1 Lọ chẳm chéo 150 gr\r\n\r\n1 Lọ Hạt dổi 50 gr\r\n\r\nCombo full set đựng quà : Hộp quà kèm túi xách sang trọng', 9, 'Còn hàng', '', '15 ngày từ ngày sản xuất', NULL, NULL),
(28, 'Set Quà 03_Thịt Trâu & Thịt Lợn Đen Gác Bếp', '/public/img/product/setqua03.jpg', 650000, 'QUÀ TẾT ĐẬM ĐÀ BẢN SẮC VIỆT CÓ TẠI BESE FOOD\r\n \r\nTiên phong chọn một lối đi riêng, Tết này Bese Food gửi tới Quý khách hàng những set quà quê biếu tặng Tết đầy ý nghĩa, quy tụ những sản vật quê hương của núi rừng Tây Bắc, tốt cho sức khoẻ gói ghém trọn vị Tết!\r\nSet Quà Tết 03 gồm:\r\n\r\nThịt trâu gác bếp 0,5 Kg (đã kèm túi chẳm chéo )\r\n\r\nThịt lợn đen gác bếp 0,5 Kg (đã kèm túi chẳm chéo )\r\n\r\nCombo full set đựng quà : Hộp quà kèm túi xách sang trọng', 9, 'Còn hàng', '', '15 ngày từ ngày sản xuất', NULL, NULL),
(29, 'Set Quà 04_Thịt Trâu & Lạp Xưởng & Gác Bếp Thịt Lợ', '/public/img/product/setqua04.jpg', 850000, 'QUÀ TẾT ĐẬM ĐÀ BẢN SẮC VIỆT CÓ TẠI BESE FOOD\r\n \r\nTiên phong chọn một lối đi riêng, Tết này Bese Food gửi tới Quý khách hàng những set quà quê biếu tặng Tết đầy ý nghĩa, quy tụ những sản vật quê hương của núi rừng Tây Bắc, tốt cho sức khoẻ gói ghém trọn vị Tết!\r\nSet Quà Tết 04 gồm:\r\n\r\nThịt trâu gác bếp 0,5 Kg (đã kèm túi chẳm chéo )\r\n\r\nThịt lợn đen gác bếp 0,5 Kg (đã kèm túi chẳm chéo )\r\n\r\nLạp xưởng gác bếp 0,5 Kg\r\n\r\nCombo full set đựng quà : Hộp quà kèm túi xách sang trọng\r\n\r\nNgoài các set quà Bese Food đưa ra, các bạn có thể mua lẻ các sản phẩm để tự set up hộp quà theo ý mình nhé!', 9, 'Còn hàng', '', '15 ngày từ ngày sản xuất', NULL, NULL),
(32, 'Cốm Tú Lệ', '/public/img/product/comtule.jpg', 60000, 'Cốm được làm từ giống lúa quý, có màu xanh đậm, hạt mềm và hậu vị đắng nhẹ mang đặc trưng của vùng Tú Lệ.\r\n\r\n', 3, 'còn hàng', 'Cốm được làm từ giống lúa quý, có màu xanh đậm, hạt mềm và hậu vị đắng nhẹ mang đặc trưng của vùng Tú Lệ.\r\nXã Tú Lệ, huyện Văn Chấn, tỉnh Yên Bái nổi tiếng với giống lúa nếp tan đặc trưng. Vào khoảng cuối tháng 9, đầu tháng 10 lúa bắt đầu chín vàng trên những thửa ruộng bậc thang.', '3 tháng từ ngày sản xuất', '2023-05-01', 'Để trong ngăn đông tủ lạnh'),
(33, 'Gạo Séng Cù', '/public/img/product/gaosengcu.jpg', 30000, 'Gạo Đặc Sản Xén Cù - Đặc sản Tây Bắc có vị thơm, các chỉ tiêu hàm lượng vitamin E, Vitamin B1, B3, B6, Cacsbonhydrat, chất sơ và các chỉ tiêu dinh dưỡng khác cao gấp từ 4 – 6 lần loại gạo khác.', 3, 'còn hàng', 'Gạo Đặc Sản Xén Cù - Đặc sản Tây Bắc có vị thơm, các chỉ tiêu hàm lượng vitamin E, Vitamin B1, B3, B6, Cacsbonhydrat, chất sơ và các chỉ tiêu dinh dưỡng khác cao gấp từ 4 – 6 lần loại gạo khác.', '3 tháng từ ngày sản xuất', '2023-05-02', 'Để nơi thoáng mát tránh ánh nắng mặt trời');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `producttype`
--

CREATE TABLE `producttype` (
  `productType_id` int(11) NOT NULL,
  `productType_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `producttype`
--

INSERT INTO `producttype` (`productType_id`, `productType_name`) VALUES
(1, 'Thịt gác bếp'),
(2, 'Gia vị Tây Bắc'),
(3, 'Thực phẩm'),
(4, 'Đồ dùng dân tộc'),
(5, 'Đồ uống'),
(6, 'Rượu'),
(7, 'Đồ ngâm rượu'),
(8, 'Các loại trà'),
(9, 'Quà Tết');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sale`
--

CREATE TABLE `sale` (
  `sale_id` int(11) NOT NULL,
  `sale_name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `pagination` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sale_products`
--

CREATE TABLE `sale_products` (
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`blog_id`),
  ADD KEY `categorieBlog_id` (`categorieBlog_id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Chỉ mục cho bảng `cart_products`
--
ALTER TABLE `cart_products`
  ADD PRIMARY KEY (`cart_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `categorieblog`
--
ALTER TABLE `categorieblog`
  ADD PRIMARY KEY (`categorieBlog_id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Chỉ mục cho bảng `orders_product`
--
ALTER TABLE `orders_product`
  ADD PRIMARY KEY (`order_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `productType_id` (`productType_id`);

--
-- Chỉ mục cho bảng `producttype`
--
ALTER TABLE `producttype`
  ADD PRIMARY KEY (`productType_id`);

--
-- Chỉ mục cho bảng `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Chỉ mục cho bảng `sale_products`
--
ALTER TABLE `sale_products`
  ADD PRIMARY KEY (`sale_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `categorieblog`
--
ALTER TABLE `categorieblog`
  MODIFY `categorieBlog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `producttype`
--
ALTER TABLE `producttype`
  MODIFY `productType_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `sale`
--
ALTER TABLE `sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_ibfk_1` FOREIGN KEY (`categorieBlog_id`) REFERENCES `categorieblog` (`categorieBlog_id`);

--
-- Các ràng buộc cho bảng `cart_products`
--
ALTER TABLE `cart_products`
  ADD CONSTRAINT `cart_products_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`),
  ADD CONSTRAINT `cart_products_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Các ràng buộc cho bảng `orders_product`
--
ALTER TABLE `orders_product`
  ADD CONSTRAINT `orders_product_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `orders_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`productType_id`) REFERENCES `producttype` (`productType_id`);

--
-- Các ràng buộc cho bảng `sale_products`
--
ALTER TABLE `sale_products`
  ADD CONSTRAINT `sale_products_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  ADD CONSTRAINT `sale_products_ibfk_2` FOREIGN KEY (`sale_id`) REFERENCES `sale` (`sale_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
