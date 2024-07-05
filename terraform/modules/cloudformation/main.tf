resource "aws_cloudformation_stack" "network" {
  name = "vpc-stack"

  parameters = {
    VpcCidrBlock = "10.0.0.0/16"
  }

  template_body = file("../../../cloudformation/ap-northeast-1/vpc.yml")
}

resource "aws_cloudformation_stack" "security_grp" {
  name = "security-groups"
  template_body = file("../../../cloudformation/ap-northeast-1/security-group.yml")
}
