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
}