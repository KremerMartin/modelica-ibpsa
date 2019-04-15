within IBPSA.Utilities.IO.Files.BaseClasses;
function writeJson
  "Write a vector of String-Real tuples to JSON format"
    input IBPSA.Utilities.IO.Files.BaseClasses.JsonWriterObject ID "Json writer object id";
    input Real[:] varVals "Variable values";

    external "C" writeJson(ID, varVals, size(varVals,1))
    annotation(Include=" #include \"jsonWriterInit.c\"",
    IncludeDirectory="modelica://IBPSA/Resources/C-Sources");

end writeJson;
