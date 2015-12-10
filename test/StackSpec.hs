module StackSpec (spec) where

import Stack
import Test.Hspec

spec :: Spec
spec = do
  describe "isEmpty" $ do
    context "when nothing has been pushed onto the stack" $ do
      it "is true" $ do
        isEmpty EmptyStack `shouldBe` True

    context "when the stack has at least one item" $ do
      it "is false" $ do
        isEmpty (push 1 EmptyStack) `shouldBe` False

  describe "top" $ do
    context "when the stack has one item" $ do
      it "returns the last item pushed" $ do
        let currentStack = push 1 EmptyStack
            in top currentStack `shouldBe` 1

  describe "pop" $ do
    context "when the stack has no items" $ do
      it "returns the empty stack" $ do
        isEmpty (pop EmptyStack) `shouldBe` True

    context "when the stack has one item" $ do
      it "returns the stack without the item ontop" $ do
        pop (push 1 EmptyStack) `shouldBe` EmptyStack

    context "when the stack has two item" $ do
      it "returns the stack without the item ontop" $ do
        pop (push 2 (push 1 EmptyStack)) `shouldBe` (push 1 EmptyStack)
