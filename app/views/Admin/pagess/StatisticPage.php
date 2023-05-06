
<h1>Đây là trang chủ Thống kê</h1>
<br>
<table border="1" width="100%" style="text-align: center;">
    <tr>
        <th>Số khách hàng</th>
        <th>Tổng đơn hàng</th>
        <th>Tổng sản phẩm</th>
        <th>Tổng tiền</th>
    </tr>
    <form method="post" name="bwdatesreport"  action="bwdates-reports-details.php" enctype="multipart/form-data">
	
	<div class="form-group"> <label for="exampleInputEmail1">Từ ngày</label> <input type="date" name="fromdate" id="fromdate" value="" class="form-control" required='true'> </div>
	<div class="form-group"> <label for="exampleInputEmail1">Đến ngày</label> <input type="date" name="todate" id="todate" value="" class="form-control" required='true'> </div>
		
	 <button type="submit" class="btn btn-default" name="submit" id="submit">Thực hiện</button> </form>
   

        <tr>
            <td><?php echo $data["number_client"] ?></td>
            <td><?php echo $data["number_order"] ?></td>
            <td><?php echo $data["number_product"] ?></td>
            <td><?php echo number_format($data["money"]) ?>VNĐ</td>
        </tr>



</table>