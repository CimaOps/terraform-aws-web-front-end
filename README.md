<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >=6.14.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >=6.14.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_autoscaling_attachment.front_end](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_attachment) | resource |
| [aws_autoscaling_group.front_end](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_group) | resource |
| [aws_launch_template.front_end](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template) | resource |
| [aws_lb.front_end](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb) | resource |
| [aws_lb_listener.front_end](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |
| [aws_lb_target_group.front_end](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group) | resource |
| [aws_security_group.ec2_sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.nlb_sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_id"></a> [ami\_id](#input\_ami\_id) | The AMI ID to use for the EC2 instances in the autoscaling group. | `string` | n/a | yes |
| <a name="input_app_port"></a> [app\_port](#input\_app\_port) | Port the application listens on | `number` | `80` | no |
| <a name="input_autoscale_group_min_max"></a> [autoscale\_group\_min\_max](#input\_autoscale\_group\_min\_max) | The minimum and maximum size for the autoscale group. | <pre>object({<br/>    min = number<br/>    max = number<br/>  })</pre> | n/a | yes |
| <a name="input_autoscale_group_size"></a> [autoscale\_group\_size](#input\_autoscale\_group\_size) | Default size of autoscale group. | `number` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | (Required) Environment of all resources | `string` | n/a | yes |
| <a name="input_instance_tags"></a> [instance\_tags](#input\_instance\_tags) | A map of tags to apply to the EC2 instances in the autoscaling group. | `map(string)` | `{}` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Instance type for Autoscale group | `string` | `"t3.micro"` | no |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | (Required) Prefix to use for all resources in this module. | `string` | n/a | yes |
| <a name="input_public_subnet_ids"></a> [public\_subnet\_ids](#input\_public\_subnet\_ids) | List of public subnet IDs to deploy resources in. | `list(string)` | n/a | yes |
| <a name="input_user_data_content"></a> [user\_data\_content](#input\_user\_data\_content) | The content of the user data script to run on EC2 instance startup. | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | The ID of the VPC where resources will be deployed. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_autoscaling_group_name"></a> [aws\_autoscaling\_group\_name](#output\_aws\_autoscaling\_group\_name) | The name of the autoscaling group for the web front end. |
| <a name="output_public_nlb_dns"></a> [public\_nlb\_dns](#output\_public\_nlb\_dns) | The DNS name of the public Network Load Balancer |
<!-- END_TF_DOCS -->