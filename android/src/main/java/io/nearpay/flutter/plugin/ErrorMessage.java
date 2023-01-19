package io.nearpay.flutter.plugin;

//General Response
class ErrorStatus{
static final int success_code= 200;
static final int initialise_failed_code= 204;
static final int invalid_argument_code= 400;
static final int auth_failed_code= 401;
static final  int general_failure_code= 402;
static final  int failure_code= 403;
static final  int invalid_code= 404;
static final String invalid_argument="Invalid argument parameter";
static final String general_messsage="Something went wrong !";
static final String failure_messsage="Failure message !";
static final String authentication_failed_message="Authentication failed invalid signature";
static final String invalid_status_messsage="Invalid status response";

// Purchase Code
static final int purchase_declined_code= 405;
static final int purchase_rejected_code= 406;
static final String purchase_declined_message="Payment Declined";
static final String purchase_rejected_message="Payment rejected";

// Refund Code
static final int refund_declined_code= 407;
static final int refund_rejected_code= 408;
static final String refund_declined_message="Refund Declined";
static final String refund_rejected_message="Refund rejected";

// Logout Code
static final int logout_already_code= 409;

// Refund Code
static final int already_installed_code= 410;
static final int not_installed_code= 411;
}







