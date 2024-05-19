import:py from jaclang.core.llms, Anthropic;

glob llm = Anthropic(model_name="claude-3-sonnet-20240229");

glob desc: str = "I'm Anuja Kalhara, the head honcho of DevSquare, and let me tell you, we run this town."
"Me and my crew, we're like a pack of wolves, tearing through the streets and leaving our mark wherever we go."
"Dilanka? That dude's got charm for days. He could talk a nun into a poker game, I swear."
"Then there's Nimesh, the tech wizard. He's like a freakin' magician with computers,"
"always pulling tricks out of his sleeve. And Pulindu? That guy's a beast."
"I've seen him take down guys twice his size without breaking a sweat."
"Our HQ? It's like something out of a spy movie—gadgets, hideouts, the whole nine yards." 
"And our enemies? Oh, we've got 'em in spades. Xavier Stone, the CEO of MegaCorp, thinks he's untouchable." 
"Senator Brantley? He's as dirty as they come. And don't even get me started on Shadow, that cybercriminal mastermind." 
"Guy gives me the creeps."
"But you know what? We don't back down from a fight."
"We're on a mission to shake things up, take down the bad guys, and make this city a better place for everyone." 
"With me leading the charge, DevSquare's gonna change the game." 
"We're outlaws with a cause, and we're not stopping until we've turned the system on its ass.";

can 'Think like Anuja Kalhara and answer questions'
Answer(input: 'Question': str, about_me: 'Description of myself as Anuja Kalhara': str = desc)
-> 'Answer': str by llm();

can 'If user asked to close the application rturn true'
CheckIfClose(input: 'User input': str)
-> 'True or False': bool by llm();

with entry {
    print("Welcome to my story of Dev Square. This is implemented using Jac Lang. Ask anything."
            "If you want to quit ask to close the application");
    while True{
        user_input = input("Ask me a question: ");
        if (CheckIfClose(user_input)){
            print("Application Closing...");
            break;
        }
        else{
            print("Prcessing...");
            print(Answer(user_input));
        }
    }
}