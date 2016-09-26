    <div id="templatemo_content">
    
    	<div id="templatemo_content_left">
        	<div id="chao"> <h1>Chào mừng quý khách đến với cửa hàng HOA ĐẸP</h1>
            <p> HOA ĐẸP là nhà phân phối và bán lẻ hoa tươi. Với 4 nông trại sản xuất hoa tươi nguyên cành với diện tích lớn tại TP.Đà Lạt, chúng tôi là nhà sản xuất và cung cấp uy tín với nhiều kinh nghiệm trong lĩnh vực phân phối hoa tươi. Website này là kênh phân phối và bán hoa trực tuyến song song với những hệ thống, mạng lưới cung cấp rộng lớn sẵn có từ trước đó của chúng tôi</p>
            <p>Chúng tôi hy vọng sẽ tiếp tục sứ mệnh phục vụ cộng đồng của mình. Trên chặng đường phát triển của mình, chúng tôi luôn sẽ cố gắng nâng cao và hoàn thiện không ngừng chất lượng dịch vụ để đáp ứng nhu cầu ngày càng cao của quý khách.</p>
            </div>

                        
             <div class="cleaner_with_height">&nbsp;</div>
  
             <?php 
                if ($this->current_action=="index") include "app/views/frontend/home/sanphammoi.php";
                elseif ($this->current_action=="detail") include "app/views/frontend/detail/sp_detail.php";
                elseif ($this->current_action=="cat") include "app/views/frontend/sanphamtrongloai/sptrongloai.php";
                elseif ($this->current_action=="showcart") include "app/views/frontend/giohang/cart_detail.php";
                elseif ($this->current_action=="muahang") include "app/views/frontend/giohang/formmuahang.php";
                elseif ($this->current_action=="thanhtoan") include "app/views/frontend/giohang/thanhtoan.php";
             ?>
                

			<div class="cleaner_with_height">&nbsp;</div>
        </div> <!-- end of ocntent left -->
        <?php 
            if($this->current_action!= "thanhtoan") {
        ?>
        <div id="templatemo_content_right">
            <?php 
            if(isset($_SESSION['login_user'])) {
            $user_login = $_SESSION['login_user'];
            ?>    
            <div class="templatemo_right_section">
            <h4>Thành viên</h4>
            <div class="templatemo_right_section_content">                    
            <?php echo "Chào bạn ". $user_login['hoten']; ?>
            <p> <a href="<?=BASE_DIR?>logout">Thoát</a>
                <a href="<?=BASE_DIR?>doipass">Đổi pass</a></p>
            </div>
            </div>
            <?php 
            }else {
            ?>  
            <div class="templatemo_right_section">
                <h4>Đăng Nhập</h4>
                <div class="templatemo_right_section_content">
                <p> <a href="<?=BASE_DIR?>login">Đăng Nhập</a>
                    <a href="<?=BASE_DIR?>">Đăng Kí</a></p>
                </div>
                </div>
            <?php
            }
            ?>
        	<div class="templatemo_right_section">
            	<h4>Search</h4>
                <div class="templatemo_right_section_content">
                    <form method="get" action="#">
                            <input name="keyword" type="text" id="keyword"/>
                            <input type="submit" name="submit" class="button" value="Search" />
                     </form>
                     <a class="section_search_other" href="http://pt.photohq.com/"   target="_blank">Photohq</a>
                 </div>
            </div>
            
            <div class="templatemo_right_section">
            	<h4>Danh Mục</h4>
                <div class="templatemo_right_section_content">
                    <?php include "app/views/frontend/home/loaisp.php"; ?>
                </div>
            </div>
            <div class="templatemo_right_section">
                <h4>Gio Hang</h4>
                <div class="templatemo_right_section_content">
                    <?php include "app/views/frontend/giohang/cart_summary.php"; ?>
                     <a class="section_search_other" href="http://pt.photohq.com/"   target="_blank">Photohq</a>
                 </div>
            </div>

            <div class="templatemo_right_section">
            	<h4>W3C Validations</h4>
            	<div class="templatemo_right_section_content">
                    <a href="http://validator.w3.org/check?uri=referer"><img style="border:0;width:88px;height:31px" src="http://www.w3.org/Icons/valid-xhtml10" alt="Valid XHTML 1.0 Transitional" width="88" height="31" vspace="8" border="0" /></a>
    <a href="http://jigsaw.w3.org/css-validator/check/referer?profile=css3"><img style="border:0;width:88px;height:31px"  src="http://jigsaw.w3.org/css-validator/images/vcss-blue" alt="Valid CSS!" vspace="8" border="0" /></a>
				</div>
            </div>
        </div> <!-- end of content right-->
        <?php 
        }
        ?>
        <div class="cleaner">&nbsp;</div>
        

    </div>
    <script  type="text/javascript">
        $(document).ready(function(){
            $(".chonhang").click(function(){
               var idsp = $(this).attr("idsp"); 
               var diachi = "addtocart/add/" + idsp+"/1";
               $.ajax({     
                url:diachi, cache:false,
                success: function(dulieu) {
                    $("#giohangtt").html(dulieu);
                    location.reload();
                    //alert('Đã thêm vào giỏ'); 
                    //$("body").scrollTop(0);
                }
               });
               return false;
            }); //chonhang


        });
    </script>
