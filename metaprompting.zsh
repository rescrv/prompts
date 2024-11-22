#!/usr/bin/env zsh

set -e

decider() {
    MODEL="$1"
    shift
    INPUT="$1"
    shift
    yammer --url http://localhost:11434 --num-ctx 16384 generate --model "$MODEL" --format json --prompt "PROMPT TO ANALYZE:

$(cat $INPUT)" | sed -e 's/ *//' | jq ".specific"
}

writer() {
    MODEL="$1"
    shift
    INPUT="$1"
    shift
    yammer --url http://localhost:11434 --num-ctx 16384 generate --model "$MODEL" --prompt "PROMPT TO ANALYZE:

$(cat $INPUT)"
}

run-the-gauntlet() {
    INPUT="$1"
    shift
    rm -f .prompt.tmp
    awk '/SYSTEM """/{flag=1;next}/"""/{flag=0}flag' "$INPUT" > .prompt.tmp
    for i in `seq 10`
    do
        echo -n specific=
        decider metaprompting/be-specific-decider .prompt.tmp
    done
    writer metaprompting/be-specific .prompt.tmp

    for i in `seq 10`
    do
        echo -n context=
        decider metaprompting/provide-context-decider .prompt.tmp
    done
    writer metaprompting/provide-context .prompt.tmp

    rm -f .prompt.tmp
}

echo
echo '# Be Specific'
run-the-gauntlet metaprompting/be-specific/Modelfile 

echo
echo '# Provide Context'
run-the-gauntlet metaprompting/provide-context/Modelfile
