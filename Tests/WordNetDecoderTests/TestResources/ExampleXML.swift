
let exampleXMLString =
"""
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE LexicalResource SYSTEM "http://globalwordnet.github.io/schemas/WN-LMF-1.0.dtd">
<LexicalResource xmlns:dc="http://purl.org/dc/elements/1.1/">
    <Lexicon id="example_en"
             label="Example wordnet (English)"
             language="en" 
             email="john@mccr.ae"
             license="https://creativecommons.org/publicdomain/zero/1.0/"
             version="1.0"
             citation="CILI: the Collaborative Interlingual Index. Francis Bond, Piek Vossen, John P. McCrae and Christiane Fellbaum, Proceedings of the Global WordNet Conference 2016, (2016)."
             url="http://globalwordnet.github.io/schemas/"
             dc:publisher="Global Wordnet Association">
        <LexicalEntry id="w1">
            <Lemma writtenForm="grandfather" partOfSpeech="n"/>
            <Sense id="example-en-10161911-n-1" synset="example-en-10161911-n">
            </Sense>
        </LexicalEntry>
        <LexicalEntry id="w2">
            <Lemma writtenForm="paternal grandfather" partOfSpeech="n"/>
            <Sense id="example-en-1-n-1" synset="example-en-1-n">
                <SenseRelation relType="derivation" target="example-en-10161911-n-1"/>
            </Sense>
        </LexicalEntry>
        <LexicalEntry id="w3">
            <Lemma writtenForm="pay" partOfSpeech="v"/>
            <SyntacticBehaviour subcategorizationFrame="Sam cannot %s Sue "/>
            <SyntacticBehaviour subcategorizationFrame="Sam and Sue %s"/>
            <SyntacticBehaviour subcategorizationFrame="The banks %s the check"/>
        </LexicalEntry>
        <Synset id="example-en-10161911-n" ili="i90287" partOfSpeech="n">
            <Definition>the father of your father or mother</Definition>
            <SynsetRelation relType="hypernym" target="example-en-10162692-n"/>
        </Synset>
        <Synset id="example-en-1-n" ili="in" partOfSpeech="n">
            <Definition>A father&apos;s father; a paternal grandfather</Definition>
            <ILIDefinition dc:source="https://en.wiktionary.org/wiki/farfar">A father&apos;s father; a paternal grandfather</ILIDefinition>
        </Synset>
        <Synset id="example-en-10162692-n" ili="i90292" partOfSpeech="n">
        </Synset>
    </Lexicon>
    <Lexicon id="example_sv"
             label="Example wordnet (Swedish)"
             language="sv" 
             email="john@mccr.ae"
             license="https://creativecommons.org/publicdomain/zero/1.0/"
             version="1.0"
             citation="CILI: the Collaborative Interlingual Index. Francis Bond, Piek Vossen, John P. McCrae and Christiane Fellbaum, Proceedings of the Global WordNet Conference 2016, (2016)."
             url="http://globalwordnet.github.io/schemas/"
             dc:publisher="Global Wordnet Association">
        <LexicalEntry id="w4">
            <Lemma writtenForm="farfar" partOfSpeech="n"/>
            <Form  writtenForm="farfäder">
                <Tag category="penn">NNS</Tag>
            </Form>
            <Sense id="example-sv-2-n-1" synset="example-en-1-n">
                <Example dc:source="Europarl Corpus">Jag vill berätta för er att min farfar var svensk beredskapssoldat vid norska gränsen under andra världskriget, ett krig som Sverige stod utanför</Example>
            </Sense>
        </LexicalEntry>
    </Lexicon>
</LexicalResource>
"""
