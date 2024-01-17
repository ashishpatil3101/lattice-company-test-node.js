import { validationResult, body } from 'express-validator';

// Validation function using express-validator
const validatePatient = [
  // Validate Name
  body('name').trim().isLength({ min: 1 }).withMessage('Name is required'),

  // Validate Address
  body('address').trim().isLength({ min: 10 }).withMessage('Address should be at least 10 characters'),

  // Validate Email
  body('email').isEmail().withMessage('Invalid email address'),

  // Validate Phone Number
  body('phone')
  .matches(/^\+(?:[0-9] ?){6,14}[0-9]$/).withMessage('Invalid phone number')
  .custom((value, { req }) => {
    // Extract the country code from the phone number (assuming it's at the beginning)
    const countryCode = value.match(/^\+(\d+)/);
    
    // Check if the country code is present and has at least 1 digit
    if (!countryCode || countryCode[1].length < 1) {
      throw new Error('Phone number should include a valid country code');
    }
    if (value.length < 12) {
      throw new Error('Phone number should be at least 10 digits after the country code');
    }

    // Validation passed
    return true;
  }),
  // Validate Password
  body('password')
    .isLength({ min: 8, max: 15 }).withMessage('Password must be between 8 and 15 characters')
    .matches(/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z]{8,15}$/)
    .withMessage('Password must contain one uppercase letter, one lowercase letter, and one number'),

  // Handle validation errors
  (req, res, next) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
        const errorMessages = errors.array().map(error => error.msg);
        return res.status(400).json({ message:'please provide correct patient data', errors: errorMessages,data:[] });
    }
    next();
  },
];

export default validatePatient;