@isTest
private class ApexClassExampleTest {
    @isTest
    static void testAddNumbers() {
        // Test case 1: Addition with valid values
        Integer result1 = ApexClassExample.addNumbers(5, 7);
        System.assertEquals(12, result1, 'Addition result should be 12');

        // Test case 2: Addition with negative values
        Integer result2 = ApexClassExample.addNumbers(-3, 8);
        System.assertEquals(5, result2, 'Addition result should be 5');
    }
}