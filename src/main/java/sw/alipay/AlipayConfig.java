package sw.alipay;

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
 */

public class AlipayConfig {

//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

    // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
    public static String app_id = "2016101200672284";

    // 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQC5gGMz4HC6qqAH8tBQ9x8oA3CeKulfwdEQs86+r+yMnhucgsilL1pKJXdk8AKN1JYyZ647lCHe+0Y7ljDGtHNayjttKTwIkF9kXHaunflIVzEJHi11ClZVfZXscPBB8xi7kvSijCXVcI1UsmFVoPyxtxRwLtSIJhh6KG5U4BBMFDObArUlLd+a3Mn/NEwqTclAuRV+BrIKKP1W+jGGg2qJGk4FRENBV8V+tK7LZvWsbcVGuonFTP77RlkGUQVsBo3g1xwEZlpLfuYs3c6Uq8/dqU8XXFWubSvWdRUGKDLKjB5QGVnsCI3+9Xq09yvgr5+lajDY6sS0zLNMwsQ6uY4dAgMBAAECggEBAIPCU7RHWQrdounCaID55qFvQBC4fidL7YmljdYX8zc2Hnqe0pGx/rnnvtRtPgMr2rtWtYUQBLbzV8F/PooFJmJ4fplczo1urrMEkjAZeTUO6X+GdddKTmRO3ayh06WkXA7vpN/IGB9w4JImWciOnq5EUjoUqVVDaeNq0GNs+2ZtQ5j/i7V2ppuuJxenkciJAJxYVbSc7CX44gq7Rb+8QEUeUdaEFhHvmDDyY9qhFOD3JDjtplAlzqK/VNRGVwfx+Uw1yRUP8icr1XmxAfo7LSuBlAzIQuO67Li0OIDdMR6GzMpCu0fPL3J8xY4TvRTKj54c/SYMHnvStVe/rjJ0CUECgYEA8ovTuSdmD/kT42GElS3yjptCxI38mBmS+bHOZqPJXoE6ILSOA/xqn1PkEHFhlX5AmVGczOFSypjWMK8xmcHK2Jva0faIZHvmIo3PK4+BQ4MvFT/km/UhDKteQTTIei6aapzSz+tfBlofrvoCHSh6lODdoZrr1D/dvp7gV96kqkUCgYEAw8qFnnY/8OFBYPrmDXVwcJEQoX0TQl3ugCIW8mkGDK7kIaE8Rt6PqyQrGjGmWQJB9AFstt0+z8Y4dhraasiS4PTJUCo3c6eMuk7ObUia8xc0Mr7RP18vJemmwLId3BI88Di3lqudsCecdUvLhOk+DEVaqVZApNm4lOi5HJKfvfkCgYBD1mv/S0+2g/nWDP5iIxnGXRKNmxDdEboT8HFEL+cwcYBqiVV3M/A2Y+ZT2wJqJ4e12ie6/gKD+79cmoOK97LeZqkLNKLtR+IUJAmfq2GCGnzeuqIcJLF7s6qHHlY8JjC2ROqJkNFhG2/lJrPUp++xGDuk6YmwMbS5jgI9UV5I6QKBgAEPgMfJ9jC016jR0xsxjqldb8ygI9GRNrCE/sDTZs/8xomUGQJ9RCP2LzGWIUOMKpVKyK745dU0SqwBGzvG2FzVlp2TjPdYaf+8W4vl/8jfUE4SEIoaVuQKrveOP3EovCHE/OGZDmKc5FESVwjiRo7EdWhDalg6QbC0zgPkm27pAoGBANqLN3Uvico3N4yyDPvAtQeoUet6FON+cNm9pol56MZd51PVdSNscYA1Gx7ZgeRTopEb164BUHNaWuY1/TywY4KLKFunQXWoxLELcUDpInlx5dJi0gyJPwYJXbuuYrz3lqXqWrifY8jFD58vAunKjePUe5Nc7eR09I6m8azUn3N4\n";
    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvumOdgYvRUIeNjXWSMSaBdY07I/ZQsIJcKXbTAE4bPIRKXbRUk39LjQhgFi/rL15mUuDfguBN0xblLkX30s87t5UikHOa5BzcKBI364Bw0DYhkbnkQo4e9Ex7NdqF5NIhB/upAvQHCcOo0zp+JStVRcpdUiFm6tblITfW+ILItp0hnS+iHHv8QiFK3eNx8RHZeGWx0o0TpB6ssLpcD1LA0bUdPvObpCwrB2M+C00Zwn4FCsvNgShyoy8+0HH+rt3ZLi2WET6qomxjttclgRjsvo3J0jIDzh3qbYMIw28cZaSSgBhREg+gTMzsH09ODRFshxpj5UID7qvxEc+F9zk7QIDAQAB";
    // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String notify_url = "http://localhost:8090/LAST_war_exploded/paySuccessController/paySuccess.do";

    // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String return_url = "http://localhost:8090/LAST_war_exploded/paySuccessController/paySuccess.do";

    // 签名方式
    public static String sign_type = "RSA2";

    // 字符编码格式
    public static String charset = "utf-8";

    // 支付宝网关
    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

    // 支付宝网关
    public static String log_path = "https://openapi.alipaydev.com/gateway.do";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /**
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     *
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis() + ".txt");
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

