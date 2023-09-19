const STATUS_CODES = {
  OK: 200,
  BAD_REQUEST: 400,
  UNAUTHORIZED: 403,
  NOT_FOUND: 404,
  INTERNAL_ERROR: 500,
};

class AppError extends Error {
  name: string;
  statusCode: number;
  description: string;
  isOperational: boolean;
  errorStack?: string;
  logError: any;

  constructor(
    name: string,
    statusCode: number,
    description: string,
    isOperational: boolean,
    errorStack?: string,
    logingErrorResponse?: any
  ) {
    super(description);
    Object.setPrototypeOf(this, AppError.prototype);
    this.name = name;
    this.statusCode = statusCode;
    this.description = description;
    this.isOperational = isOperational;
    this.errorStack = errorStack;
    this.logError = logingErrorResponse;

    if (Error.captureStackTrace) {
      Error.captureStackTrace(this, AppError);
    } else {
      this.stack = new Error().stack;
    }
  }
}

class ApiError extends AppError {
  constructor(
    name: string,
    statusCode: number = STATUS_CODES.INTERNAL_ERROR,
    description: string = "Internal Server Error",
    isOperational: boolean = true
  ) {
    super(name, statusCode, description, isOperational);
  }
}

class BadRequestError extends AppError {
  constructor(description: string = "Bad request", logingErrorResponse?: any) {
    super(
      "BAD REQUEST",
      STATUS_CODES.BAD_REQUEST,
      description,
      true,
      undefined,
      logingErrorResponse
    );
  }
}

class ValidationError extends AppError {
  constructor(description: string = "Validation Error", errorStack?: string) {
    super(
      "BAD REQUEST",
      STATUS_CODES.BAD_REQUEST,
      description,
      true,
      errorStack
    );
  }
}

export { STATUS_CODES, AppError, ApiError, BadRequestError, ValidationError };
