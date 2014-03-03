cimport cython

@cython.profile(False)
cdef inline int _ground0(int liftedFeatureIndex, int labelIndex, int numFeatures):
    return liftedFeatureIndex + labelIndex*numFeatures

cdef inline int _ground(int liftedFeatureIndex, int labelIndex, object indexer):
    return _ground0(liftedFeatureIndex, labelIndex, len(indexer))

cdef c_viterbi(sent, o0Feats, featureExtractor, float[:] weights, 
              float[:, :] dpValues, int[:, :] dpBackPointers, 
              labels, featureIndexes, 
              includeLossTerm=?, costAugVal=?, useBIO=?)

cdef i_viterbi(sent, o0Feats, featureExtractor, float[:] weights, 
              float[:, :] dpValuesFwd, float[:, :] dpValuesBwd, int[:, :] dpBackPointers, 
              float[:, :] o0Scores, float[:,:,:] o1FeatWeights, labels, freqSortedLabelIndices, featureIndexes, 
              includeLossTerm=?, costAugVal=?, useBIO=?)