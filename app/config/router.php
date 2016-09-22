<?php
/**
	$router['đường dẫn'] = 'thư mục chứa trong controller(nếu có)/controller/action'
	([^/]+) ko lấy dấu /
	(:num) truyền vào params phải là các kí tự số
	(:any) truyền vào params các kí tự trừ dấu /
**/
function router() {
	$router = array();

	$router['default_controller'] = "frontend/home";

	
	
	//$router['home/cat/(:num)'] = "frontend/home/cat";
	//$router['home/cat/(:num)/(:num)'] = "frontend/home/cat";
	//$router['home/detail/(:num)'] = "frontend/home/detail";

	/**
	 * Backend
	 */
	$router['acp'] = "backend/home";
	$router["acp/login"] = "backend/auth/login";
	$router["acp/logout"] = "backend/auth/logout";
	$router["loading"] = "backend/auth/loading";
	//*user
	$router["acp/user"] = "backend/user";
	$router["acp/user/page"] = "backend/user/index";
	$router["acp/user/page/(:num)"] = "backend/user/index";
	$router["acp/user/add"] = "backend/user/add";
	$router["acp/user/show/(:num)"] = "backend/user/show";
	$router["acp/user/edit/(:num)"] = "backend/user/edit";
	$router["acp/user/delete/(:num)"] = "backend/user/delete";
	/**
	 * Frontend
	 */
	//login
	$router["login"] = "frontend/auth/login";
	$router["logout"] = "frontend/auth/logout";
	//
	$router['home'] = "frontend/home";
	$router['detail/(:num)'] = 'frontend/home/detail';
	$router['cat/(:num)'] = 'frontend/home/cat';
	$router['cat/(:num)/trang-(:num)'] = 'frontend/home/cat';

	$router['addtocart/(:any)/(:num)/(:num)'] = 'frontend/addtocart/addcart';
	$router['addtocart/(:any)'] = 'frontend/addtocart/addcart';
	$router['addtocart/(:any)/(:num)'] = 'frontend/addtocart/addcart';
	$router['cart_summary'] = 'frontend/addtocart/showcart_summary';
	$router['showcart_detail'] = 'frontend/addtocart/showcart_detail';
	$router['showcart'] = 'frontend/home/showcart';
	$router['muahang'] = 'frontend/home/muahang';
	//$router["(:any).html"] = "frontend/home/detail";
	//$router["(:any)/trang"] = "frontend/home/cat";
	//$router["(:any)/trang-(:num)"] = "frontend/home/cat";
	//$router["(:any)/(:any).html"] = "frontend/home/detail";


	return $router;
}
?>