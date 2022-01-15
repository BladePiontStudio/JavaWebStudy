public class Person implements Fly{
    @Override
    public void flying() {
        System.out.println("我会飞！");
    }

    public void say(){
        System.out.println("我会说话");
    }

    public static void main(String[] args){
        Person person = new Person();
        person.say();
    }
}
