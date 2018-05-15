using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace AboutUs.Models
{
    public class Contact
    {
        [Required(ErrorMessage = "You need to fill in an email address")]
        [DataType(DataType.EmailAddress, ErrorMessage = "Your email address contains some errors")]
        [DisplayName("Email address")]
        public string Email { get; set; }

        [Required(ErrorMessage = "You need to fill in a name")]
        [DisplayName("First Name")]
        public string fName { get; set; }

        [DisplayName("Last Name")]
        public string lName { get; set; }

        [Required(ErrorMessage = "You need to fill in a comment")]
        [DisplayName("Your comment")]
        public string Comment { get; set; }
    }
}