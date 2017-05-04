resource "aws_iam_role" "Admin" {
    name = "Admin"
}

resource "aws_iam_policy" "policy" {
    name = "test-policy"
    description = "A test policy"
    policy =    #omitted
}

resource "aws_iam_role_policy_attachment" "test-attach" {
    role = "${aws_iam_role.role.name}"
    policy_arn = "${aws_iam_policy.policy.arn}"
}

resource "aws_iam_role" "PowerUser" {
    name = "PowerUser"
}

resource "aws_iam_policy" "policy" {
    name = "test-policy"
    description = "A test policy"
    policy =    #omitted
}

resource "aws_iam_role_policy_attachment" "test-attach" {
    role = "${aws_iam_role.role.name}"
    policy_arn = "${aws_iam_policy.policy.arn}"
}

resource "aws_iam_role" "ReadOnly" {
    name = "ReadOnly"
}

resource "aws_iam_policy" "policy" {
    name = "test-policy"
    description = "A test policy"
    policy =    #omitted
}

resource "aws_iam_role_policy_attachment" "test-attach" {
    role = "${aws_iam_role.role.name}"
    policy_arn = "${aws_iam_policy.policy.arn}"
}

resource "aws_iam_saml_provider" "default" {
    name = "Okta_Admin"
    saml_metadata_document = "${file("admin-metadata.xml")}"
}

resource "aws_iam_saml_provider" "default" {
    name = "Okta_PowerUser"
    saml_metadata_document = "${file("power-metadata.xml")}"
}

resource "aws_iam_saml_provider" "default" {
    name = "Okta_ReadOnly"
    saml_metadata_document = "${file("read-metadata.xml")}"
}

