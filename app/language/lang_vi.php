<?php
function lang() {
$lang = array();

// Common
$lang["hello"] = "Xin Chào";
$lang["update_personal_information"] = "Cập Nhật Thông Tin Cá Nhân";
$lang["english"] = "English";
$lang["vietnamese"] = "Việt Nam";
$lang["logout"] = "Thoát";
$lang['add'] = "Lưu";
$lang['new'] = "Thêm";
$lang['edit'] = "Sửa";
$lang['delete'] = "Xóa";
$lang['come_back'] = "Quay lại";

// User
$lang['user_id'] = 'ID Nhân viên';
$lang['user_fullname'] = 'Họ Tên';
$lang['user_username'] = 'Tên đăng nhập';
$lang['user_password'] = 'Mật khẩu';
$lang['user_re_password'] = 'Nhập lại mật khẩu';
$lang['user_group'] = 'Nhóm';
$lang['user_group_0'] = 'Nhân viên';
$lang['user_group_1'] = 'Admin';
$lang['user_image'] = 'Ảnh đại diện';
$lang['user_phone'] = 'Điện thoại';
$lang['user_email'] = 'Email';
$lang['user_address'] = 'Địa chỉ';
$lang['user_gender'] = 'Giới tính';
$lang['user_birthday'] = 'Ngày sinh';
$lang['user_status'] = 'Trạng thái';
$lang['user_create_at'] = 'Ngày tạo';
$lang['user_gender_0'] = 'Nữ';
$lang['user_gender_1'] = 'Nam';
$lang['user_status_0'] = 'Bị khóa';
$lang['user_status_1'] = 'Hoạt động';
$lang['user_list'] = 'Danh sách nhân viên';
$lang['user_add'] = 'Thêm nhân viên';
$lang['user_edit'] = 'Cập nhật nhân viên';
$lang['user_delete'] = 'Xóa nhân viên';
$lang['user_info'] = 'Thông tin nhân viên';
$lang['user_has_been_updated'] = 'Nhân viên đã được cập nhật!';
$lang['user_has_been_deleted'] = 'Nhân viên đã bị xóa!';
$lang['user_has_been_created'] = 'Nhân viên đã được tạo!';
$lang['user_has_been_locked'] = 'Nhân viên đã bị khóa!';
$lang['user_has_been_deny'] = 'Tài khoản không có quyền hạn truy cập!';
$lang['user_not_exist'] = 'Nhân viên không tồn tại trong hệ thống!';

// Authenticate
$lang['auth_login'] = 'Đăng nhập';
$lang['auth_logout'] = 'Thoát';
$lang['auth_user'] = 'Tên đăng nhập';
$lang['auth_pass'] = 'Mật khẩu';
$lang['auth_login_to_system'] = 'Đăng nhập vào hệ thống';
$lang['auth_logout_from_sytem'] = 'Đăng xuất khỏi hệ thống';
$lang['auth_password_not_available'] = 'Mật khẩu không đúng!';
$lang['auth_current_pasword'] = 'Mật khẩu hiện tại';
$lang['auth_new_password'] = 'Mật khẩu mới';
$lang['auth_confirm_password'] = 'Xác nhận mật khẩu';
$lang['auth_change_now'] = 'Cập nhật';
$lang['auth_do_not_have_permission'] = "Bạn không có quyền truy cập vào trang này!";
$lang['auth_back_to_dashboad'] = 'Quay lại bảng điều khiển';
/*
	form_validation
*/
$lang['form_validation_required'] = "không được để trống";
$lang['form_validation_exist'] = "đã tồn tại";
$lang['form_do_not_exactly'] = 'không chính xác';




return $lang;
}