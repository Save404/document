农户模块

获取农户详细信息: \
url: /nh/get_nh_detail \
method: get \
状态码: \
	0: 有数据 前端可进行渲染 \
	500102: 用户未登录，跳转登录页 \
	其余: 显示错误 
	
添加农户详细信息: \
url: /nh/add_nh_datail \
状态码: \
	0: 操作成功 \
	其余: 显示错误 
	
农产品模块

添加农产品信息 \
url: /ncp/add_ncp
状态码:
	0: 操作成功 \
	500102: 用户未登录，跳转登录页 \
	其余: 显示错误 

获取农产品列表 \
url: /ncp/get_ncp_list \
method: get \
状态码: \
	0: 请求发送成功 返回 \
	其余: 显示错误 

获取单个农产品信息 \
url: /ncp/get_ncp/{NcpBasicId} \
method: get \
状态码: \
	0: 有数据 前端可进行渲染 \
	其余: 显示错误 
	
修改农产品信息 \
url: /ncp/modify_ncp/{NcpBasicId} \
状态码: \
	0: 操作成功 \
	500102: 用户未登录，跳转登录页 \
	其余: 显示错误 
