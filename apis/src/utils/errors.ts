/**
 * Standard error response helper
 * @param message - Error message to return to client
 * @param status - HTTP status code
 */
export function errorResponse(message: string, status: number = 400): Response {
  return Response.json({ error: message }, { status });
}

/**
 * Server error response helper (500)
 * @param error - The error object
 * @param context - Additional context about what failed
 */
export function serverError(error: Error, context: string = "Operation failed"): Response {
  console.error(`${context}:`, error);
  console.error("Cause:", error.cause);

  return Response.json({
    error: context,
    details: error.message
  }, { status: 500 });
}
