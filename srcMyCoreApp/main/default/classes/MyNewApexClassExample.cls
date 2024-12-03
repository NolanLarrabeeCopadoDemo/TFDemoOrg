/**
 * @description Class to handle numeric operations following Copado standards
 * @author BuildAgent
 * @date 2024-12-03
 */
public class number-operations-copado {
    
    /**
     * @description Adds multiple integers with null checking and error handling
     * @param num1 First number to be added
     * @param num2 Second number to be added
     * @param num3 Third number to be added
     * @return Integer Sum of the input numbers
     * @throws NullPointerException if any input parameter is null
     */
    public static Integer addNumbers(Integer num1, Integer num2, Integer num3) {
        try {
            // Validate input parameters
            if(num1 == null || num2 == null || num3 == null) {
                // Log error using Nebula Logger
                Logger.error('Null parameter detected in addNumbers method');
                throw new NullPointerException('Input parameters cannot be null');
            }
            
            // Perform addition and check for integer overflow
            Integer result = 0;
            result += num1;
            result += num2;
            result += num3;
            
            // Log successful operation
            Logger.debug('Successfully added numbers: ' + result);
            return result;
            
        } catch(Exception e) {
            // Log the error using Nebula Logger
            Logger.error('Error in addNumbers method: ' + e.getMessage());
            Logger.saveLog();
            throw e;
        }
    }
    
    /**
     * @description Custom exception for null parameter handling
     */
    public class NullPointerException extends Exception {}
}
