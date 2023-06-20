package io.nearpay.flutter.plugin;

//General Response
public class ErrorStatus {
    public static final int success_code = 200;
    public static final int initialise_failed_code = 204;
    public static final int invalid_argument_code = 400;
    public static final int auth_failed_code = 401;
    public static final int general_failure_code = 402;
    public static final int failure_code = 403;
    public static final int invalid_code = 404;
    public static final String invalid_argument = "Invalid argument parameter";
    public static final String general_messsage = "Something went wrong !";
    public static final String failure_messsage = "Failure message !";
    public static final String authentication_failed_message = "Authentication failed invalid signature";
    public static final String invalid_status_messsage = "Invalid status response";

    // Purchase Code
    public static final int purchase_declined_code = 405;
    public static final int purchase_rejected_code = 406;
    public static final String purchase_declined_message = "Payment Declined";
    public static final String purchase_rejected_message = "Payment rejected";

    // Refund Code
    public static final int refund_declined_code = 407;
    public static final int refund_rejected_code = 408;
    public static final String refund_declined_message = "Refund Declined";
    public static final String refund_rejected_message = "Refund rejected";

    // Logout Code
    public static final int logout_already_code = 409;

    // Refund Code
    public static final int already_installed_code = 410;
    public static final int not_installed_code = 411;
    public static final int invalid_admin_pin = 412;

    public static final int session_opened_code = 200;

    public static final int session_closed_code = 500;
}
