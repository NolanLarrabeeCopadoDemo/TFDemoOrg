@isTest
private class MyNewApexClassExampleTest {
    @isTest
    static void testAddNumbers() {
        // Test case 1: Addition with valid valuess
        Integer result1 = MyNewApexClassExample.addNumbers(10, 10);
        System.assertEquals(20, result1, 'Addition result should be 20');

        // Test case 2: Addition with negative valuess
        Integer result2 = MyNewApexClassExample.addNumbers(-3, 8);
        System.assertEquals(5, result2, 'Addition result should be 5');
    }
}