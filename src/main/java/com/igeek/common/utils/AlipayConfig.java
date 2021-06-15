package com.igeek.common.utils;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 *
 * 隧道id：fc4bc01a234d7c02
 *
 * 必须要开着隧道开启的软件，才可以连上隧道。软件一关，隧道也会关
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2021000117671688";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCAW6AqnEuU5Ngcd39wYvCFLqqXUah5OTEHYMxyt9PbhbGmvDJ2jKu/Bt9ePTJxvzkrBMS/q1/BZ3N/ebUWN5Rx3FTgx9IB5RhHjIcs9BW8Nt7QPBa5pnAY0M4A8A9FEpiKQldV9++UvlH85qqu+Hz8GAomjCZa8Ivs/vTs2Wf0IBJGlA8n6uMAX6BdvCv5vOha7lDm7+jp4z6F1BJJnDGEOKkTh8L7wSiBRs/utXBpgkBZmYimgWZjSiOydLz+udAFa6b+xslXjwmK2Nq8mR4+x9DjRSlSbzHQIKPi/ZMbLKcv9vvu6LrTGM3KYOIYePsEKD3RMignqjDMdqXknKNbAgMBAAECggEAJs4MhPVNcE0i/LAvyeVPe6QZFLguK7/bj7R2+rOSjApGI/c/dlGe1piYTOBJcNPzz4qYhK2lvE2vQDmmQno5GZcX3gDq/4GoLnFQqIl+TLF1+RRBdozX1NjDfssUgrhVf28BAk97kcdb+A4wScd72abW4sJ6EgIo+1Q07anoYIgnh1+GdyRHLdiZMCCWqoCNlIgoSu7bHnENRvD5DIdRlzMqkZn5eA0UnzL9uTxAupk1ey+0JvSlaOjKna+XNe+XPofZuShALrpWvMRW8/koaF4p8dvjian0yLZW6MVZNIB9RvQ5Y3iEXCLKpoHuyiNO9/7mcLBUsqJyQBbD1gIWQQKBgQDHIWfRNFjvHfmfcLnQHBes6kwpvbydk9FosNwB+3DfUrtgnltQCKjy6YKrbszVIo38fW8ava2MxGzFlZtPr6cDp20LdwY4DVBCfHiG+wLmegajmLx0+bSnEizrIGxbfnPdHgWS+ZqwmWDZDYcioHAS9vran0qdK5qYDmVJvUVxIQKBgQClA/qDCxbdadmk+NJcV7s461iBsiVnW4u/KzzuhhyQX92FLPPDt5zsV1XJdOnPA5X7HFqbTgAFh/4GT0N+yK/IqEZrCdOLN68oIPszGezIR/Hy7XRjSYcFWhKU3VX5wyBdiuAUKbMvrKj/GKiHWldswdZ2rAJSn958c665Nle4+wKBgB2IntUwZmBQmc1D8ssi34AN3+3w7iCQ4+YbFQZWPI9ivde+pNxh7GzapT632DlkPprMH8Zfi3XtTBSh878F1kd8dXfV115I2zaBL38Vi4CTaJiq9oiC4IBG+dKFpIyNXLHW2gzKaF744JxQnVJNaVHmv53dMjvNU8hpmiwtnjcBAoGBAJtRDFiNdn7+o1lQzgcWmGTxt0OT3vrSws0zsE09s+L8KG+yKNqdlzko1tkgjvVHhcJuJKYrG4AZSTK9JmVOFY5DPMyA2jkeN2II8QdfLmwws32YnMTbLxgNeJHfZo4IaA1DqrevrDWCSSqaFf4YPVNjey4FpsYILYxsAhfYG2dDAoGBAIk1YCajwysnEVaB2A0TROzWW1t1cmYpruaTl+cXAU+MYLNttnXxwvlK+DzZTMputMOyN3HUsqLf+saC4MdsrxiKkgnVCDfHqD+Q3sqZ+7bjyau9X5rGhRTPuK0Unozud+44dYJYdAEom7oOa9pggSBviwhuTKdi7P4E3K4qfDpg";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqiN4WvlT/mQgXngVMFqTh8eUVptxx44HjnlF+zIoZgXgSZEyLLQ+sLQjc7gCeZGR/zlJMZQUPngPgF31mH9RVej9O5mVLQEvjkBWqC7U7FTddH2Z93S0vUnuh16zeQ4FLRwsLXdReg9XnPOcnJ5j4yZZIiEFD8vOtCmN7/NB1XK4OQlIPOOvAGL+E2QJqhevRNDwgiEKlixIK7y1SEh4hBxSgfDl3R4NtgWYf5DBmV73AAfhElYxdOiWZhXwXGe6rctgz3A5vfkuj4Sc90hwccc3T57FvJebxbrWCXB6SDYXbGRsBDFdFP4EZov0GC9c2KsgW+C1sf7aewMiw0q1RQIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://szwtree.free.idcfengye.com/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://szwtree.free.idcfengye.com/return_url.jsp";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关（日志的生成路径）
	public static String log_path = "E:\\tools\\alipaykey\\log";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

