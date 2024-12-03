@isTest
private class MyNewApexClassExampleTest {
    @isTest
    static void testAddNumbers() {
        // Test case 1: Addition with valid values
        Integer result1 = MyNewApexClassExample.addNumbers(15, 17);
        System.assertEquals(32, result1, 'Addition result should be 32');

        // Test case 2: Addition with negative values
        Integer result2 = MyNewApexClassExample.addNumbers(-3, 8);
        System.assertEquals(5, result2, 'Addition result should be 5');
    }
}@IsTest
private class number-operations-test-copado {
    @IsTest
    static void testValidAddition() {
        Test.startTest();
        Integer result = number-operations-copado.addNumbers(1, 2, 3);
        Test.stopTest();
        
        System.assertEquals(6, result, 'Addition should return correct sum');
    }
    
    @IsTest
    static void testNullParameters() {
        Test.startTest();
        try {
            Integer result = number-operations-copado.addNumbers(null, 2, 3);
            System.assert(false, 'Should have thrown an exception');
        } catch(number-operations-copado.NullPointerException e) {
            System.assert(true, 'Expected exception was thrown');
        }
        Test.stopTest();
    }
}
