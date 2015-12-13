module StackSpec (spec) where

import           Stack
import           Test.Hspec

spec :: Spec
spec = do
  describe "isEmpty" $ do
    context "when nothing has been pushed onto the stack" $
      it "is true" $
        isEmpty EmptyStack `shouldBe` True

    context "when the stack has at least one item" $
      it "is false" $
        isEmpty (push 1 EmptyStack) `shouldBe` False

  describe "top" $
    context "when the stack has one item" $
      it "returns the last item pushed" $
          top (push 1 EmptyStack) `shouldBe` 1

  describe "pop" $ do
    context "when the stack has no items" $
      it "returns the empty stack" $
        isEmpty (pop EmptyStack) `shouldBe` True

    context "when the stack has one item" $
      it "returns the stack without the item ontop" $
        pop (push 1 EmptyStack) `shouldBe` EmptyStack

    context "when the stack has two item" $
      it "returns the stack without the item ontop" $
        pop (push 2 (push 1 EmptyStack)) `shouldBe` push 1 EmptyStack
