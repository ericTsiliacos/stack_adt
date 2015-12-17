module StackSpec (spec) where

import Stack
import Test.Hspec

spec :: Spec
spec = do
  describe "isEmpty" $ do
    context "when nothing has been pushed onto the stack" $
      it "returns true" $
        isEmpty empty `shouldBe` True

    context "when the stack has at least one item" $
      it "returns false" $
        isEmpty (push 1 empty) `shouldBe` False

  describe "top" $ do
    context "when there is one item in the stack" $
      it "returns the top item" $
        top (push 1 empty) `shouldBe` 1
    context "when there are multiple items in the stack" $
      it "returns the top most item" $
        top (push 2 (push 1 empty)) `shouldBe` 2

  describe "pop" $ do
    context "when there is no items in the stack" $
      it "does not blow up" $
        isEmpty (pop empty) `shouldBe` True
    context "when there is one item in the stack" $
      it "returns an empty stack" $
        isEmpty (pop (push 1 empty)) `shouldBe` True
    context "when there are two item in the stack" $
      it "returns a stack with the correct top item" $
        top (pop (push 2 (push 1 empty))) `shouldBe` 1
