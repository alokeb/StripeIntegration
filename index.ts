const stripe = require('stripe')('sk_test_51MCqXWBQ4KMU4ZEdvk7p5zgbRBj0S9K1zhTvGR6hJcBzPYLvI3GyHujznvp7QHqTQbolIqBPIAvyTzR9lQpg9L7e00bQCiimbQ');

stripe.customers.create({
  email: 'customer@example.com',
})
  .then(customer => console.log(customer.id))
  .catch(error => console.error(error));