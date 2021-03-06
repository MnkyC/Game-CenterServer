--[[
	centerserver是服务管理中心，自身也是一个服务
	所有的服务都需要在这里进行注册，统一管理

	按模块分
		服务管理
			每启动一个服务就需要在这里进行注册，加入集群并进行广播
			对外接口有，服务注册和停止等
		连接服务管理
			如果后端开发不在游戏，就需要和后端建立连接，进行接口调用
		场景服务管理
			具体涉及到游戏内容的服务，如用户服务，对局服务，匹配服务等
			这些服务也都是先执行服务管理的流程（注册广播）
			接着每个服务单独建立一个center进行管理，也需要注册，加入集群，方便其他进程(不同机器)调用
		命令行管理
			也是一个服务，方便进行管理

]]
