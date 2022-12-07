# Deception-detection-with-machine-learning-technics
Merging multiples classifier to detect deception with the belief theory (generalized probability probability generalized to account for uncertainty)

First Model : Text classifier 
The excel file provided containts observations labeled with class 1 or 0 ( Delusion or veracity) according to the columns that express verbal descriptors 
such as the number of occurrences of positive/negative words, verbal tense, refusal words...
    Step 1 : Dealing with missing values: weused an interative imputer to impute missing data.
    Step 2: Mutual information computation :
          mutual_info_classif(colonne ,Class) = correlation of colonne affecting the deceptive behaviour.
    Step 3 : Model selection and hyperparameter tunning : 
          In usual case , our focus is to determin a liar when he does it so the most important metric is the false negative ones which figure for example in the F1_SCORE.
    Step 4: Fix the tunned model and select feature depending on F1_SCORE.
    [Everything is detailed in the ipynb file]
 
 
 Second Model : video classifier 
The excel file provided containts observations labeled with class 1 or 0 ( Delusion or veracity) according to the columns that express face descriptors 
such as movement of the lips or head or hands, eyebrows ...
    Step 1 : Mutual information computation :
          mutual_info_classif(colonne ,Class) = correlation of colonne affecting the deceptive behaviour.
    Step 2 : Model selection and hyperparameter tunning : 
    evaluation metric = F1_SCORE 
    Step 3: Fix the tunned model and select feature depending on F1_SCORE.
    [Everything is detailed in the ipynb file]
    
    
  Third Model : Audio classifier + merging decision
The excel file provided in the final folder containts all observations labeled with class 1 or 0 ( Delusion or veracity) according to all columns can describe deception.
The audi_descpritors are simply deduced after droping vide +text descripteurs
    Step 1 : Mutual information computation :
          mutual_info_classif(colonne ,Class) = correlation of colonne affecting the deceptive behaviour.
    Step 2 : Model selection and hyperparameter tunning : 
    evaluation metric = F1_SCORE 
    Step 3: Fix the tunned model and select feature depending on F1_SCORE.
    [Everything is detailed in the ipynb file]
    Step 4 : This is the most important and difficult step because we must have some mathematical background to implement and explain it.
    We kind of prove first that all classifiers may have conflict to decide deception or veracity.
    Well ,the belief theory looks to design a mass function to modelize this imprecision.
    How we modelized our mass function : see the report.pdf file .
    
    
    
