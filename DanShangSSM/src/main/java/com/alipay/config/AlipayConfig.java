package com.alipay.config;

public class AlipayConfig {
	// 商户appid
	public static String APPID = "2016101300678024";
	// 私钥 pkcs8格式的
	public static String RSA_PRIVATE_KEY = "MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCDbVykwMmVf6iKnopEg+Ct3ayvTmC+wwX/j9DHAVtOMBJwDC/yg4JW9xi8lu+spOsSgq4QTm45JG1eKbwr2LzQgH9SU3BOZdz/gnOykRiXHx6Qpb8G72uLDeJESwiHlZvChnlNpQvxSVcjyi6Wlx5R1HAW56Z8BrfRwZNuE2Kidqp4tu6vPVCnqTYk/7UgJ1lnS3KdDcB7Wcq68HBTQaJUkGDBjO2L0BXcovydFTcuB44T6RIFDAB5jjLY6gxCIQujZ6X+G2SDDiMJsC+XMw+lnrQkqgSrhZUHr77iAAjHQIM6Ptsv5lQ70TlamaLmccKihKc860pGA+jgl7V1uGPTAgMBAAECggEAZSZbIfW6b9PjXGRuWBMDbezpBbcV4Ftql2kRLshNhFydJB1NHaG3Q8VDBYpJBh+bSBDJdIVYcaQmhE0spLZXg0USOMM88SmWsBOvheQD//MUbBEUd3r20vuphBQXiXpMeadTXr3C9j4S0dm+h2nhDOuqJQa+bEAjY01PcW18ATqlVC8iwhcYUKCz01DY3R4G8cpCJ+apKnDRsW1M8jdNqNbEM2URKzRCFZN3zRG3H+BtvBb1fR0rtLBo7RdeNu3d+Zid7CaFIIyfC10ra5k/z94xq/9D5SuYNLZ2KqJsm0OktW7RpEbKy2WXgNhTMCT2JtXhGCO3BRBrDmcDT8nvAQKBgQDLgxXHT7b94V9J4gYn9xWDWYKjzId/RkLOQYSXgR3o+5mFrvfGDWjAGz5qo243weHOGah/1rRs0K5k13BUq1/IEfHJcp8Ag34EWOzwQ3pMXFbzUKsn+5PLktItJWEfM0AaTYRoqO7uEcv96eW3Y5vHlIFGStUmLLV/5myl9iQYgQKBgQClUtzpjE+kwm+48ugHs7Svsx7u6SqnIwqm+OQTvS6KV9nAxAnz1FqhM+G70cg7EOSzMzXZSE9Mt0XNev7DW3kxdjZirLUcv7r/znfXuncqcaUskD5taULuXlzaCn7J60xAlGXVmWnVqQ/PVhaM/7yOaoCzploN/H2lhJhoP5tyUwKBgEXNChU4ZB0jxZkDqvTeLETG2KXxqq+em58+nYmRQX79fKR7ZIRLaRgqv/e3YkBBgX89Eav3Kh8AXDA+LEr+FHX8oZ9kbuCwOPKoxWuK2VGDglcl3e5yvThffTL61RrsaxoaaEW1W23QMNU/+ggyY+XKK6S+WekkAISDtdQeXjcBAoGASy7/4AY7QgZaoJV3B+mlxjGDY8sN5qx876pIruFeBPQmxw9gJ07vWFgr1Cp3EMWB/CzR1FqaFZ1TVTsWGOnEl8XWvdElHEnlVOgkgCsAfoDoSPfgLAmuspCfUVlsh49GQig6l4UJKG2WDwhrgPvcWDf/B7QjSDEHQvqmBOLIYpkCgYBjE2rztfEhtCpc3HXGJfGM6/JTVqI0OMXwJyt2WeBzOE99wPZKxyh5J0naAQz+NYuhG0npA5/vgxmOOBctPG/Q4Zqz7VJMCdaEZKVVrwhAgu7zQ8/jIc25WWemkmjk+UtCfgZvvlRKfMYsXjsNG2DUq0nw1k9DFlQvy3417TH+EA==";
	// 服务器异步通知页面路径 需http://或者https://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://localhost:8080/DanShangSSM/notify_url.jsp";
	// 页面跳转同步通知页面路径 需http://或者https://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问 商户可以自定义同步跳转地址
	public static String return_url = "http://localhost:8080/DanShangSSM/return_url.jsp";
	// 请求网关地址
	public static String URL = "https://openapi.alipaydev.com/gateway.do";
	// 编码
	public static String CHARSET = "UTF-8";
	// 返回格式
	public static String FORMAT = "json";
	// 支付宝公钥
	public static String ALIPAY_PUBLIC_KEY = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnpYvLFy0TV7mF7fcp3NmofxrgUOCRUoqFgfa4w60xkO0eaIANrEO+YcvAJR3EHu6RlgtOOrjwBjJl234EocOi9x6bww+fW6LCdLa9c1QiAvDKqPLMgwNG0zoatj+oxry4xGWbRn0tG7p8f15/3muoQzvHaYN4BhZLfLqQKnnqzDOjNrfA1wn1l/O/Bovua6A4EGHT8/VcvN+GRQRJeaS//3Am9fuyzMqHhauiLoW73px8v+XVnJVVvoyXiFDOE11LH4WGIW31dCpu5CsqrOsGMaGq3qig6l0kUMX2qxxyUHzfK7nQBGEJ0b2Vl0J0OpE5Xx0Fp8QEvPx1s+BdzR9FwIDAQAB";
	// 日志记录目录
	public static String log_path = "/log";
	// RSA2
	public static String SIGNTYPE = "RSA2";
}
