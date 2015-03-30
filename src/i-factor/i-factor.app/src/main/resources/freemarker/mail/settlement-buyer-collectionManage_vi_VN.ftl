<div style="background:#ccc;padding:10px;">
  <div id="ftl-content-logo">
    <img src="${base}/static/themes/default/img/logo1.png" />
    <img src="${base}/static/themes/default/img/logo2.png" />
  </div>
  <div style="background:#fff;">
    <!--Title -->
    <b>Tiêu đề: Thông tin thu nợ</b>
  </div>
  <div>
    Gửi Quý khách,
  </div>
  <div style="background:#fff">
    <!--Content field 1: General notification input here-->
    Hóa đơn mã số <000000> đã đáo hạn nhưng chưa được người mua thanh toán.  Bank/The Bank đã hỗ trợ thu hồi nợ trong  xx ngày kể từ ngày đáo hạn nhưng không thành công. Theo hợp đồng đã ký, Bank/The Bank sẽ cung cấp đầy đủ thông tin và hỗ trợ quý khách tiến hành thu hồi nợ trực tiếp với người bán hóa đơn.
  </div>
  <div>
    Chi tiết thông tin được hiển thị dưới đây<br/>
    Thông tin liên quan: <b>ứng dụng</b>
  </div>
  <div style="background:#fff;">
    <!--Content field 2: Details, Links and Actions input here-->
    Thông tin hóa đơn: <br/>
    Thông tin hóa đơn: <br/>
    - ID giao dịch: ${auction.id} <br/>
    - ID hóa đơn: ${auction.invoice.id} <br/>
    - Debtor: (Make sure we allow for debtor info input in the 1st place for auto generation) <br/>
    - Ngày tải lên: <br/>
    - Ngày đáo hạn của hóa đơn: <br/>
    - Hạn chuyển tiền: <br/>
    <a href="${base}/buyer/closedauction/closedAuctionDetail/${auction.invoice.id}">Vui lòng xem thông tin chi tiết hóa đơn tại đây </a>
  </div>
  <div>
    Nếu Quý khách có bất kỳ thắc mắc nào, vui lòng tham khảo mục Trợ Giúp hay liên hệ với chúng tôi theo địa chỉ email cs@EntroAuction
    <br/><br/>
    Trân trọng,<br/>
    Nhóm EntroAuction
  </div>
  <div style="font-size:10px;">
    Đây là email tự động, xin vùi lòng không trả lời địa chỉ email này.
  </div>
  <div style="color:#f00;font-size:10px;">
    Cần tư vấn/mẫu của Pháp Chế<br/>
    This message (including any attachments) is confidential and may be legally privileged. If you are not the intended recipient, you should not disclose, copy or use any part of it - please delete all copies immediately and notify EntroAuction Customer Service at cs@EntroAuction.vpb.com.vn<br/><br/>
    For further information on the services visit our web site at www.
  </div>
</div>